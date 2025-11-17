#!bin/bash



#LTC99 Chip vs CNR CTCF
plotHeatmap -m  /Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/CHIP.v.CNR_Git1/CTCF_Analysis_NewPeakCalling/MatrixMaking/LTC99_Matrix.gz \
-o /Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/CHIP.v.CNR_Git1/CTCF_Analysis_NewPeakCalling/HeatMaps/LTC99_Heatmap.pdf \
--colorMap Oranges Blues Reds \
--whatToShow 'plot, heatmap and colorbar' \
--dpi 600 \
--boxAroundHeatmaps no \
--plotTitle "CHIP vs CNR CTCF_LTC99" \
--samplesLabel "CHIP" "CNR" "ATAC" \
--zMax "auto" "auto" 0.2 \
--missingDataColor 1

