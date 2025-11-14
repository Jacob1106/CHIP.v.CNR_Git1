source("/Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/Myfunctions.R")

LTC42 <- readRDS("/Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/CTCF_Analysis/WidthAnalysisPlots/LTC42WidthPlot_NA_P.rds")
LTC99 <- readRDS("/Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/CTCF_Analysis/WidthAnalysisPlots/LTC99WidthPlot_NA_P.rds")

LTC42 <- LTC42 +
    labs(title = "LTC42")
LTC99 <- LTC99 + 
    labs(title = "LTC99")

plotList <- list(LTC42, LTC99)

combined <- wrap_plots(plotList, ncol = 2)

ggsave("/Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/CTCF_Analysis/WidthAnalysisPlots/CombinedLTC42_99_WidthPlots_NA_P.png", combined, height = 7, width = 7, dpi = 300)