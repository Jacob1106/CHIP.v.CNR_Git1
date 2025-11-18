#!bin/bash

module load deeptools/3.5.6

 bsub -P baker -J 'computeMatrix5' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
 'computeMatrix reference-point -S /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/CTCF/BigWigFiles/CHIP/SJHGG059115_C5-LTC42_P21-CTCF-AB2_REP1.mLb.clN.bigWig /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/CTCF/BigWigFiles/CNR/SJHGG059115_C105-LTC42_P30_250K-CTCF-AB2_S3_R1.bigWig /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/BigWigBash/SJHGG059115_C19-LTC42_P28_REP1.mLb.clN.sorted.bw \
 -R CTCF_Analysis_NewPeakCalling/BEDFILES/CTCF_LTC42_BED/uniqueCHIP_NA_P.bed CTCF_Analysis_NewPeakCalling/BEDFILES/CTCF_LTC42_BED/uniqueCNR_NA_P.bed CTCF_Analysis_NewPeakCalling/BEDFILES/CTCF_LTC42_BED/overlap_CNR_NA_P.bed \
 --downstream 2000 \
 --upstream 2000 \
 -o  CTCF_Analysis_NewPeakCalling/MatrixMaking/LTC42_Matrix.gz\
 -p 8'

#99
 bsub -P baker -J 'computeMatrix5' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
 'computeMatrix reference-point -S /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/CTCF/BigWigFiles/CHIP/SJHGG066267_C2-LTC99_P30-CTCF-AB2_REP1.mLb.clN.bigWig /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/CTCF/BigWigFiles/CNR/SJHGG066267_C57-LTC99_P24_250K-CTCF-AB2_S11_R1.bigWig /research_jude/rgs01_jude/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/ChIP.v.CnR/GeneralR_script_CHIP_CUT/BigWigBash/SJHGG066267_C8-LTC99_P29_REP1.mLb.clN.sorted.bw \
 -R CTCF_Analysis_NewPeakCalling/BEDFILES/CTCF_LTC99_BED/uniqueCHIP_NA_P.bed CTCF_Analysis_NewPeakCalling/BEDFILES/CTCF_LTC99_BED/uniqueCNR_NA_P.bed CTCF_Analysis_NewPeakCalling/BEDFILES/CTCF_LTC99_BED/overlap_CNR_NA_P.bed \
 --downstream 2000 \
 --upstream 2000 \
 -o  CTCF_Analysis_NewPeakCalling/MatrixMaking/LTC99_Matrix.gz\
 -p 8'
