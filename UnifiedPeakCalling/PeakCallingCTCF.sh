#!bin/bash

#CTCF_99 CHIP

bsub -P baker -J 'CTCF-PeakCalling' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
'macs3 callpeak -t /Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/CTCF/ChIP/SJHGG066267_C2-LTC99_P30-CTCF-AB2_REP1.mLb.clN.sorted.bam \
-c /Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/CTCF/ChIP/SJHGG066267_C2-LTC99_P30-INPUT_REP1.mLb.clN.sorted.bam \
-f BAM \
-n CHIP_CTCF_99_PeakCalls \
-B \
-p 0.005 \
--cutoff-analysis \
--trackline \
--outdir /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/CHIP.v.CNR_Git1/UnifiedPeakCalling'



#CTCF_42 CHIP
bsub -P baker -J 'H3K27-PeakCalling_CHIP' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
'macs3 callpeak -t /Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/CTCF/ChIP/SJHGG059115_C5-LTC42_P21-CTCF-AB2_REP1.mLb.clN.sorted.bam \
-c /Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/CTCF/ChIP/SJHGG059115_C5-LTC42_P21-INPUT_REP1.mLb.clN.sorted.bam \
-f BAM \
-n CHIP_CTCF_42_PeakCalls \
-B \
--broad \
-p 0.005 \
--cutoff-analysis \
--trackline \
--outdir /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/CHIP.v.CNR_Git1/UnifiedPeakCalling/CHIP_CTCF_PeakCalling'

#CTCF_99 CNR
bsub -P baker -J 'CTCF-PeakCalling' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
'macs3 callpeak -t /Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/CTCF/CnR/SJHGG066267_C57-LTC99_P24_250K-CTCF-AB2_S11_R1.target.markdup.sorted.bam \
-c /Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/CTCF/CnR/SJHGG066267_C57-LTC99_P24_250K-IGG-AB14_S9_R1.target.markdup.sorted.bam \
-f BAM \
-n CHIP_CTCF_99_PeakCalls \
-B \
-p 0.005 \
--cutoff-analysis \
--trackline \
--outdir /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/CHIP.v.CNR_Git1/UnifiedPeakCalling/CNR_CTCF_PeakCalling'


#CTCF_42 CNR
bsub -P baker -J 'CTCF-PeakCalling' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
'macs3 callpeak -t /Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/CTCF/CnR/SJHGG059115_C105-LTC42_P30_250K-CTCF-AB2_S3_R1.target.markdup.sorted.bam \
-c /Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/CTCF/CnR/SJHGG059115_C105-LTC42_P30_250K-IGG-AB14_S1_R1.target.markdup.sorted.bam \
-f BAM \
-n CHIP_CTCF_42_PeakCalls \
-B \
-p 0.005 \
--cutoff-analysis \
--trackline \
--outdir /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/CHIP.v.CNR_Git1/UnifiedPeakCalling/CNR_CTCF_PeakCalling'


