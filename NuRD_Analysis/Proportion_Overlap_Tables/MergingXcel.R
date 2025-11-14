source("/Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/Myfunctions.R")

x1 <- read_excel("/Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/NuRD_Analysis/Proportion_Overlap_Tables/MBD3.xlsx")
x2 <- read_excel("/Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/NuRD_Analysis/Proportion_Overlap_Tables/MTA2.xlsx")
x3 <- read_excel("/Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/NuRD_Analysis/Proportion_Overlap_Tables/RBBP4.xlsx")
x4 <- read_excel("/Volumes/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/CTCF_Analysis/Proportion_Overlap_Tables/LTC42.xlsx")
x5 <- read_excel("/Volumes/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/CTCF_Analysis/Proportion_Overlap_Tables/LTC99.xlsx")
x6 <- read_excel("/Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/H3K27me3_Analysis/Proportion_Overlap_Tables/H3K27.xlsx")

x1 <- x1 |>
    mutate(ID = c("MBD3"))
x2 <- x2 |>
    mutate(ID = c("MTA2"))
x3 <- x3 |>
    mutate(ID = c("RBBP4"))
x4 <- x4 |>
    mutate(ID = "CTCF_42")
x5 <- x5 |>
    mutate(ID = "CTCF_99")
x6 <- x6 |>
    mutate(ID = "H3K27me3")
merged <- bind_rows(x1, x2, x3, x4, x5, x6)

write_xlsx(merged, "/Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/NuRD_Analysis/Proportion_Overlap_Tables/Merged1.xlsx")