#!bin/bash

#H3K27 CNR

bsub -P baker -J 'H3K27-PeakCalling' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
'macs3 callpeak -t /Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/H3K27me3/CnR/SJHGG059115_C145-LTC42_Ctrl-H3K27me3-AB4_R1.target.markdup.sorted.bam /Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/H3K27me3/CnR/SJHGG059115_C145-LTC42_Ctrl-H3K27me3-AB4_R2.target.markdup.sorted.bam \
-c /Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/H3K27me3/CnR/SJHGG059115_C145-LTC42_Ctrl-IGG-AB14_R1.target.markdup.sorted.bam \
-f BAM \
-n H3KK27_PeakCalls \
-B \
-p 0.0001 \
--cutoff-analysis \
--trackline \
--outdir /Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/CHIP.v.CNR_Git1/UnifiedPeakCalling'





