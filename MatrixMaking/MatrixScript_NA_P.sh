#!bin/bash

module load deeptools/3.5.6

#CTCF- LTC42
bsub -P baker -J 'computeMatrix4' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
 'computeMatrix reference-point -S CTCF/BigWigFiles/CHIP/SJHGG059115_C5-LTC42_P21-CTCF-AB2_REP1.mLb.clN.bigWig CTCF/BigWigFiles/CNR/SJHGG059115_C105-LTC42_P30_250K-CTCF-AB2_S3_R1.bigWig \
 -R GeneralR_script_CHIP_CUT/BEDFiles/CTCF_LTC42_BED/uniqueCHIP_NA_P.bed GeneralR_script_CHIP_CUT/BEDFiles/CTCF_LTC42_BED/uniqueCNR_NA_P.bed GeneralR_script_CHIP_CUT/BEDFiles/CTCF_LTC42_BED/overlap_CNR_NA_P.bed\
 --downstream 2000 \
 --upstream 2000 \
 -o GeneralR_script_CHIP_CUT/MatrixMaking/LTC42_NA_P.gz \
 -p 8'

#LTC99
bsub -P baker -J 'computeMatrix5' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
 'computeMatrix reference-point -S CTCF/BigWigFiles/CHIP/SJHGG066267_C2-LTC99_P30-CTCF-AB2_REP1.mLb.clN.bigWig CTCF/BigWigFiles/CNR/SJHGG066267_C57-LTC99_P24_250K-CTCF-AB2_S11_R1.bigWig\
 -R GeneralR_script_CHIP_CUT/BEDFiles/CTCF_LTC99_BED/uniqueCHIP_NA_P.bed GeneralR_script_CHIP_CUT/BEDFiles/CTCF_LTC99_BED/uniqueCNR_NA_P.bed GeneralR_script_CHIP_CUT/BEDFiles/CTCF_LTC99_BED/overlap_CNR_NA_P.bed\
 --downstream 2000 \
 --upstream 2000 \
 -o GeneralR_script_CHIP_CUT/MatrixMaking/LTC99_NA_P.gz \
 -p 8'

# #H3K27:

# bsub -P baker -J 'computeMatrix5' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
#  'computeMatrix reference-point -S \
#  -R \
#  --downstream 2000 \
#  --upstream 2000 \
#  -o /Volumes/groups/bakergrp/projects/baker_data/bakergrp/analyses/JM/CHIP.v.CNR_Git/MatrixMaking/LTC99.gz \
#  -p 8'







