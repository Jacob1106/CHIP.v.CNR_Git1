# install.packages("BiocManager")
# BiocManager::install(c("GenomicRange, rtracklayer", "ChIPseeker", "TxDb.Hsapiens.UCSC.hg38.knownGene", "org.Hs.eg.db", "ChIPpeakAnno", "ggvenn", "clusterProfiler", "ggupset", "ReactomePA", "plyranges", "writexl", "readxl", "dplyr"))

library(GenomicRanges)
library(rtracklayer)
library(TxDb.Hsapiens.UCSC.hg38.knownGene)
library(org.Hs.eg.db)
library(ChIPseeker)
library(tidyverse)
library(ChIPpeakAnno)
library(ggvenn)
library(clusterProfiler)
library(ggupset)
library(ReactomePA)
library(plyranges)
library(writexl)
library(readxl)
library(dplyr)
library(patchwork)
library(qpdf)
library(gridExtra)
library(gridGraphics)
library(grid)

txdb <- TxDb.Hsapiens.UCSC.hg38.knownGene

# Requires:
#named_file_list = named list of condition and sample and file path
# Returns as list of Grange Objects 
import_samples <- function(named_file_list){
    GRANGE_List <- list()
    for (x in seq_along(named_file_list)){
        import_data <- import(named_file_list[[x]])
        GRANGE_List <- append(GRANGE_List, setNames(list(import_data), names(named_file_list)[x]))
    }
    return(GRANGE_List)

}
#RETURNS LIST OF GRANGE objects named after the the named list used in the input 

#Function that takes in a list of GRange objects and filteres the list with a given p value: 

filter_by_pvalue <- function(list, pvalue, chromosomes = c("chr1", "chr2", "chr3", "chr4", "chr5", "chr6", "chr7", "chr8", "chr9", "chr10", "chr11", "chr12", "chr13", "chr14", "chr15", "chr16", "chr17", "chr18", "chr19", "chr20", "chr21", "chr22", "chrX", "chrY")){
    list <- list
    for (x in seq_along(list)){
        #Convert log 10 p values to normal P values
        individual <- list[[x]]
        individual$pValue_norm <- 10^(-individual$pValue)

        #Filtering P value: 
        individual <- individual[which(individual$pValue_norm < pvalue), ]

        individual <- individual[seqnames(individual) %in% chromosomes]

        list[[x]] <- individual 


    }
    return(list)
}
#RETURNS Filtered GRANGE OBJECTS in the a list format
#class = list 
# CLASS IS NOT GRANGELIST

#Input = 
#GrangeList = grange_list
#How many overlaps you want each sample to have in order to be included in the merged G Range Object: 

overlapGRangeList <- function(grange_list, num_of_overlaps_required = 1){
        unlist <- unlist(grange_list)
        index <- which(countOverlaps(unlist) > num_of_overlaps_required)
        filtered_GRange <- unlist[index]
        returnGRange <- GenomicRanges::reduce(filtered_GRange)
        return(returnGRange)
}

#RETURNS = Combined GRange Objects with the filtered values 


#Inputs = 
#Two condition names 
#Data from each condition 

custom_venn_diagram <- function(conditionA, conditionB, DataA, DataB){
        venn <- makeVennDiagram(list(conditionA = DataA, conditionB = DataB), 
            fill = c("skyblue", "salmon"), 
            cat.col = c("blue", "red"),
            main = paste("Peak Overlap between", conditionA, "and", conditionB),
            plot = TRUE
        )
        return(venn)
}

#RETURNS = VENN DIAGRAM OF OVERLAPS BETWEEN DATA 

#Proportion Overlap Function: 
# Input = Two Genomic Ranges objects + Overlap Genomic Range + Unique Genomic Range
#RETURNS = tibble of relavant data: 
proportionOverlapTibble <- function(object1, object2, overlapobject1, overlapobject2, object1_unique, object2_unique){
    total_base_overlap <- 0 # nolint
    totalwidthObj1 <- sum(width(object1)) #nolint
    totalwidthObj2 <- sum(width(object2)) #nolint

    for (x in seq_along(overlapobject1)){ #nolint
        over_lap_start <- max(start(overlapobject1[x]), start(overlapobject2[x])) #nolint
        over_lap_end <- min(end(overlapobject1[x]), end(overlapobject2[x])) #nolint
        overlap_length <- max(0, over_lap_end - over_lap_start)
        total_base_overlap <- total_base_overlap + overlap_length
    }

    object1_prop_Overlap <- total_base_overlap / totalwidthObj1 #nolint
    object2_prop_Overlap <- total_base_overlap / totalwidthObj2  #nolint

    total_base_unique_Obj1 <- sum(width(object1_unique)) #nolint
    total_base_unique_Obj2 <- sum(width(object2_unique)) #nolint

    cond_name1 <- deparse(substitute(object1))
    cond_name2 <- deparse(substitute(object2))

    propOverlap_Object1 <- length(overlapobject1) / length(object1)
    percentageOverlap_Obj1 <- propOverlap_Object1 * 100

    propOverlap_Object2 <- length(overlapobject2) / length(object2)
    percentageOverlap_Obj2 <- propOverlap_Object2 * 100

    totalPeaksObj1 <- length(object1) 
    totalPeaksObj2 <- length(object2)

    resultsTableBaseOverlap <- tibble( #nolint
    sample = c(cond_name1, cond_name2),
    ProportionOverlap = c(object1_prop_Overlap, object2_prop_Overlap),
    TotalPeakCoverage = c(totalwidthObj1, totalwidthObj2),
    UniqueBase = c(total_base_unique_Obj1, total_base_unique_Obj2), #nolint
    TotalPeaks = c(totalPeaksObj1, totalPeaksObj2),
    PercentageOverlapPeaks = c(percentageOverlap_Obj1, percentageOverlap_Obj2)
    )
    return(resultsTableBaseOverlap)


}

#Width Analysis: 
#Takes 2 Grange Objects and plots a density plot which shows differences in width 
compareGRangeWidth <- function(Obj1, Obj2){
    widthAnalysis <- data.frame(
        width = c(width(Obj1), width(Obj2)),
        condition = rep(c(deparse(substitute(Obj1)), deparse(substitute(Obj2))), c(length(Obj1), length(Obj2))) #nolint
    )
    widthPlot <- ggplot(widthAnalysis, aes(x = width, fill = condition))+ #nolint
        geom_density(alpha = 0.4)+ #nolint 
        scale_x_log10()+ #nolint
        theme_classic()+ # nolint: object_usage_linter.
        labs(title = "Peak width comparison", x = "Peak width (bp)", y = "Density") #nolint
    return(widthPlot)
}

