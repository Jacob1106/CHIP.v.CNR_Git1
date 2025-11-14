source("/Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/Myfunctions.R")

combined <- pdf_combine(input = c("GeneralR_script_CHIP_CUT/HeatMaps/MBD3.pdf", 
"GeneralR_script_CHIP_CUT/HeatMaps/RBBP4.pdf", 
"GeneralR_script_CHIP_CUT/HeatMaps/CTCF_99.pdf", 
"GeneralR_script_CHIP_CUT/HeatMaps/CTCF_42.pdf"), 
output = "GeneralR_script_CHIP_CUT/HeatMaps/CombinedHeatMap.pdf")

