#!bin/bash

#H3K27 CNR

bsub -P baker -J 'H3K27-PeakCalling' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
'macs3 callpeak -t /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/H3K27me3/CnR/SJHGG059115_C145-LTC42_Ctrl-H3K27me3-AB4_R1.target.markdup.sorted.bam /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/H3K27me3/CnR/SJHGG059115_C145-LTC42_Ctrl-H3K27me3-AB4_R2.target.markdup.sorted.bam \
-c /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/H3K27me3/CnR/SJHGG059115_C145-LTC42_Ctrl-IGG-AB14_R1.target.markdup.sorted.bam \
-f BAM \
-n H3KK27_PeakCalls \
-B \
-p 0.015 \
--cutoff-analysis \
--trackline \
--outdir /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/CHIP.v.CNR_Git1/UnifiedPeakCalling/CNR_H3K27me3_PeakCalls'

 #H3K27 CHIP
bsub -P baker -J 'H3K27-PeakCalling_CHIP' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
'macs3 callpeak -t /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/H3K27me3/ChIP/SJHGG059115_C129-LTC42_AAVS1_D7_R1-H3K27me3-AB4_REP1.mLb.clN.sorted.bam /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/H3K27me3/ChIP/SJHGG059115_C130-LTC42_AAVS1_D7_R2-H3K27me3-AB4_REP1.mLb.clN.sorted.bam /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/H3K27me3/ChIP/SJHGG059115_C131-LTC42_AAVS1_D7_R3-H3K27me3-AB4_REP1.mLb.clN.sorted.bam \
-c /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/H3K27me3/ChIP/SJHGG059115_C135-LTC42_AAVS1_D7-INPUT_REP1.mLb.clN.sorted.bam \
-f BAM \
-n H3K27_PeakCalls_CHIP \
-B \
--broad \
-p 0.001 \
--cutoff-analysis \
--trackline \
--outdir /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/CHIP.v.CNR_Git1/UnifiedPeakCalling/CHIP_H3K27me3_PeakCalls'





