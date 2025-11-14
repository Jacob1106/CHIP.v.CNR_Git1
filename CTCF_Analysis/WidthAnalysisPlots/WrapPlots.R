source("/Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/Myfunctions.R")

LTC42 <- readRDS("/Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/CTCF_Analysis/WidthAnalysisPlots/LTC42WidthPlot.rds")
LTC99 <- readRDS("/Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/CTCF_Analysis/WidthAnalysisPlots/LTC99WidthPlot.rds")

LTC42 <- LTC42 +
    labs(title = "LTC42")
LTC99 <- LTC99 + 
    labs(title = "LTC99")

plotList <- list(LTC42, LTC99)

combined <- wrap_plots(plotList, ncol = 2)

ggsave("GeneralR_script_CHIP_CUT/CTCF_Analysis/WidthAnalysisPlots/CombinedLTC42_99_WidthPlots.png", combined, height = 7, width = 7, dpi = 300)