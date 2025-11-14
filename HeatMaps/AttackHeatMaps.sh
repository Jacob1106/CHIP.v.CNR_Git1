#!bin/bash

#AttackHeatMap 

#LTC42 Chip vs CNR CTCF
plotHeatmap -m /Volumes/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/MatrixMaking/MatatrixWithAttack/CTCF_LTC42_CNR_vs_CHIP.gz \
-o /Volumes/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/HeatMaps/AttackHeatMaps/LTC42_CNR_vs_CHIP.pdf \
--colorMap Oranges Blues Reds \
--whatToShow 'plot, heatmap and colorbar' \
--dpi 600 \
--boxAroundHeatmaps no \
--plotTitle "CHIP vs CNR CTCF_LTC42" \
--samplesLabel "CHIP" "CNR" "ATAC" \
--zMax "auto" "auto" 0.2 \
--missingDataColor 1

#LTC99 Chip vs CNR CTCF
plotHeatmap -m /Volumes/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/MatrixMaking/MatatrixWithAttack/CTCF_LTC99_CNR_vs_CHIP.gz \
-o /Volumes/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/HeatMaps/AttackHeatMaps/LTC99_CNR_vs_CHIP.pdf \
--colorMap Oranges Blues Reds \
--whatToShow 'plot, heatmap and colorbar' \
--dpi 600 \
--boxAroundHeatmaps no \
--plotTitle "CHIP vs CNR CTCF_LTC99" \
--samplesLabel "CHIP" "CNR" "ATAC" \
--zMax "auto" "auto" 0.2 \
--missingDataColor 1




#Unique LTC42 vs LTC99 CNR and CHIP:

#CNR
plotHeatmap -m /Volumes/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/MatrixMaking/MatatrixWithAttack/CTCF_Unique_Peak_Comparison_CNR.gz \
-o /Volumes/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/HeatMaps/AttackHeatMaps/UniquePeaks_CTCF_CNR.pdf \
--colorMap Oranges Blues Reds inferno \
--whatToShow 'plot, heatmap and colorbar' \
--dpi 600 \
--boxAroundHeatmaps no \
--plotTitle "CTCF LTC42 vs LTC99 CNR Unique Peaks" \
--samplesLabel "LTC42 CNR" "LTC99 CNR" "ATAC LTC42" "ATAC LTC99" \
--zMax "auto" "auto" 0.2 0.2 \
--missingDataColor 1



#CHIP
plotHeatmap -m /Volumes/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/MatrixMaking/MatatrixWithAttack/CTCF_Unique_Peak_Comparison_CHIP.gz \
-o /Volumes/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/HeatMaps/AttackHeatMaps/UniquePeaks_CTCF_CHIP.pdf \
--colorMap Oranges Blues Reds inferno \
--whatToShow 'plot, heatmap and colorbar' \
--dpi 600 \
--boxAroundHeatmaps no \
--plotTitle "CTCF LTC42 vs LTC99 CHIP Unique Peaks" \
--samplesLabel "LTC42 CHIP" "LTC99 CHIP" "ATAC LTC42" "ATAC LTC99" \
--zMax "auto" "auto" 0.2 0.2 \
--missingDataColor 1


