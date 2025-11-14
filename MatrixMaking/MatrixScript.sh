#!bin/bash

module load deeptools/3.5.6

----NuRD_MBD3----
bsub -P baker -J 'computeMatrix1' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
 'computeMatrix reference-point -S NuRD/BigWig/CHIP/SJHGG059115_C108-LTC42_P26-MBD3-AB1.bigWig \
 GeneralR_script_CHIP_CUT/BigWigBash/MBD3_CNR.bigWig \
 -R GeneralR_script_CHIP_CUT/BEDFiles/NuRD_MBD3_BED/uniqueCHIP.bed GeneralR_script_CHIP_CUT/BEDFiles/NuRD_MBD3_BED/uniqueCNR.bed GeneralR_script_CHIP_CUT/BEDFiles/NuRD_MBD3_BED/overlap_CNR.bed \
 --downstream 2000 \
 --upstream 2000 \
 -o GeneralR_script_CHIP_CUT/MatrixMaking/MBD3.gz \
 -p 8'

#----NuRD_RBBP4
bsub -P baker -J 'computeMatrix2' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
 'computeMatrix reference-point -S NuRD/BigWig/CHIP/SJHGG059115_C112-LTC42_P26-RBBP4-AB1.bigWig GeneralR_script_CHIP_CUT/BigWigBash/RBBP4_CNR.bigWig \
 -R GeneralR_script_CHIP_CUT/BEDFiles/NuRD_RBBP4_BED/uniqueCHIP.bed GeneralR_script_CHIP_CUT/BEDFiles/NuRD_RBBP4_BED/uniqueCNR.bed GeneralR_script_CHIP_CUT/BEDFiles/NuRD_RBBP4_BED/overlap_CNR.bed \
 --downstream 2000 \
 --upstream 2000 \
 -o GeneralR_script_CHIP_CUT/MatrixMaking/RBBP4.gz \
 -p 8'

#MTA2
bsub -P baker -J 'computeMatrix3' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
 'computeMatrix reference-point -S NuRD/BigWig/CHIP/SJHGG059115_C111-LTC42_P26-MTA2-AB1.bigWig GeneralR_script_CHIP_CUT/BigWigBash/MTA2_CNR.bigWig \
 -R GeneralR_script_CHIP_CUT/BEDFiles/NuRD_MTA2_BED/uniqueCHIP.bed GeneralR_script_CHIP_CUT/BEDFiles/NuRD_MTA2_BED/uniqueCNR.bed GeneralR_script_CHIP_CUT/BEDFiles/NuRD_MTA2_BED/overlap_CNR.bed \
 --downstream 2000 \
 --upstream 2000 \
 -o GeneralR_script_CHIP_CUT/MatrixMaking/MTA2.gz \
 -p 8'

#CTCF- LTC42
bsub -P baker -J 'computeMatrix4' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
 'computeMatrix reference-point -S CTCF/BigWigFiles/CHIP/SJHGG059115_C5-LTC42_P21-CTCF-AB2_REP1.mLb.clN.bigWig CTCF/BigWigFiles/CNR/SJHGG059115_C105-LTC42_P30_250K-CTCF-AB2_S3_R1.bigWig \
 -R GeneralR_script_CHIP_CUT/BEDFiles/CTCF_LTC42_BED/uniqueCHIP.bed GeneralR_script_CHIP_CUT/BEDFiles/CTCF_LTC42_BED/uniqueCNR.bed GeneralR_script_CHIP_CUT/BEDFiles/CTCF_LTC42_BED/overlap_CNR.bed\
 --downstream 2000 \
 --upstream 2000 \
 -o GeneralR_script_CHIP_CUT/MatrixMaking/LTC42.gz \
 -p 8'

#LTC99
bsub -P baker -J 'computeMatrix5' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
 'computeMatrix reference-point -S CTCF/BigWigFiles/CHIP/SJHGG066267_C2-LTC99_P30-CTCF-AB2_REP1.mLb.clN.bigWig CTCF/BigWigFiles/CNR/SJHGG066267_C57-LTC99_P24_250K-CTCF-AB2_S11_R1.bigWig\
 -R GeneralR_script_CHIP_CUT/BEDFiles/CTCF_LTC99_BED/uniqueCHIP.bed GeneralR_script_CHIP_CUT/BEDFiles/CTCF_LTC99_BED/uniqueCNR.bed GeneralR_script_CHIP_CUT/BEDFiles/CTCF_LTC99_BED/overlap_CNR.bed\
 --downstream 2000 \
 --upstream 2000 \
 -o GeneralR_script_CHIP_CUT/MatrixMaking/LTC99.gz \
 -p 8'







