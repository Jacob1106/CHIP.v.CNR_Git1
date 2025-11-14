source("/Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/Myfunctions.R")
MTA2 <- readRDS("/Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/NuRD_Analysis/WidthAnalysisPlots/MTA2.rds")
MBD3 <- readRDS("/Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/NuRD_Analysis/WidthAnalysisPlots/MBD3.rds")
RBBP4 <- readRDS("/Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/NuRD_Analysis/WidthAnalysisPlots/RBBP4.rds")

MTA2 <- MTA2 +
    labs(title = "MTA2")
RBBP4 <- RBBP4 + 
    labs(title = "RBBP4")
MBD3 <- MBD3 +
    labs(title = "MBD3")

plotList <- list(MTA2, RBBP4, MBD3)

combined <- wrap_plots(plotList, ncol = 2)

ggsave("GeneralR_script_CHIP_CUT/NuRD_Analysis/WidthAnalysisPlots/CombinedPlotNuRD.png", combined, height = 7, width = 7, dpi = 300)