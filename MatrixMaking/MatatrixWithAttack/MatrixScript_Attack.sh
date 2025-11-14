#!bin/bash

module load deeptools/3.5.6

#H3K27 Non Filtered
bsub -P baker -J 'computeMatrix5' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
 'computeMatrix reference-point -S GeneralR_script_CHIP_CUT/BigWigBash/h3k27_CHIP.bigWig GeneralR_script_CHIP_CUT/BigWigBash/H3K27_CNR.bigWig GeneralR_script_CHIP_CUT/BigWigBash/SJHGG059115_C19-LTC42_P28_REP1.mLb.clN.sorted.bw \
 -R  GeneralR_script_CHIP_CUT/BEDFiles/H3K27_BED/uniqueCHIP_NA_P.bed GeneralR_script_CHIP_CUT/BEDFiles/H3K27_BED/uniqueCNR_NA_P.bed GeneralR_script_CHIP_CUT/BEDFiles/H3K27_BED/overlap_CNR_NA_P.bed \
 --downstream 8000 \
 --upstream 8000 \
 -o GeneralR_script_CHIP_CUT/MatrixMaking/MatatrixWithAttack/H3K27_CNR_vs_CHIP.gz \
 -p 8'


# #CTCF- LTC42
bsub -P baker -J 'computeMatrix4' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
 'computeMatrix reference-point -S CTCF/BigWigFiles/CHIP/SJHGG059115_C5-LTC42_P21-CTCF-AB2_REP1.mLb.clN.bigWig CTCF/BigWigFiles/CNR/SJHGG059115_C105-LTC42_P30_250K-CTCF-AB2_S3_R1.bigWig GeneralR_script_CHIP_CUT/BigWigBash/SJHGG059115_C19-LTC42_P28_REP1.mLb.clN.sorted.bw \
 -R GeneralR_script_CHIP_CUT/BEDFiles/CTCF_LTC42_BED/uniqueCHIP_NA_P.bed GeneralR_script_CHIP_CUT/BEDFiles/CTCF_LTC42_BED/uniqueCNR_NA_P.bed GeneralR_script_CHIP_CUT/BEDFiles/CTCF_LTC42_BED/overlap_CNR_NA_P.bed\
 --downstream 2000 \
 --upstream 2000 \
 -o GeneralR_script_CHIP_CUT/MatrixMaking/MatatrixWithAttack/CTCF_LTC42_CNR_vs_CHIP.gz \
 -p 8'

#LTC99
bsub -P baker -J 'computeMatrix5' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
 'computeMatrix reference-point -S CTCF/BigWigFiles/CHIP/SJHGG066267_C2-LTC99_P30-CTCF-AB2_REP1.mLb.clN.bigWig CTCF/BigWigFiles/CNR/SJHGG066267_C57-LTC99_P24_250K-CTCF-AB2_S11_R1.bigWig GeneralR_script_CHIP_CUT/BigWigBash/SJHGG066267_C8-LTC99_P29_REP1.mLb.clN.sorted.bw\
 -R GeneralR_script_CHIP_CUT/BEDFiles/CTCF_LTC99_BED/uniqueCHIP_NA_P.bed GeneralR_script_CHIP_CUT/BEDFiles/CTCF_LTC99_BED/uniqueCNR_NA_P.bed GeneralR_script_CHIP_CUT/BEDFiles/CTCF_LTC99_BED/overlap_CNR_NA_P.bed\
 --downstream 2000 \
 --upstream 2000 \
 -o GeneralR_script_CHIP_CUT/MatrixMaking/MatatrixWithAttack/CTCF_LTC99_CNR_vs_CHIP.gz \
 -p 8'

#Unique Overlapped: 
#CHIP
bsub -P baker -J 'computeMatrix5' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
 'computeMatrix reference-point -S CTCF/BigWigFiles/CHIP/SJHGG059115_C5-LTC42_P21-CTCF-AB2_REP1.mLb.clN.bigWig CTCF/BigWigFiles/CHIP/SJHGG066267_C2-LTC99_P30-CTCF-AB2_REP1.mLb.clN.bigWig GeneralR_script_CHIP_CUT/BigWigBash/SJHGG059115_C19-LTC42_P28_REP1.mLb.clN.sorted.bw GeneralR_script_CHIP_CUT/BigWigBash/SJHGG066267_C8-LTC99_P29_REP1.mLb.clN.sorted.bw\
 -R GeneralR_script_CHIP_CUT/BEDFiles/OverlapsBetweenUniqueRegionsCTCF/UniqueCHIP_LTC42.bed GeneralR_script_CHIP_CUT/BEDFiles/OverlapsBetweenUniqueRegionsCTCF/UniqueCHIP_LTC99.bed GeneralR_script_CHIP_CUT/BEDFiles/OverlapsBetweenUniqueRegionsCTCF/OverlappedUniqueCHIP.bed \
 --downstream 2000 \
 --upstream 2000 \
 -o GeneralR_script_CHIP_CUT/MatrixMaking/MatatrixWithAttack/CTCF_Unique_Peak_Comparison_CHIP.gz \
 -p 8'

#CNR

bsub -P baker -J 'computeMatrix5' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
 'computeMatrix reference-point -S CTCF/BigWigFiles/CNR/SJHGG059115_C105-LTC42_P30_250K-CTCF-AB2_S3_R1.bigWig CTCF/BigWigFiles/CNR/SJHGG066267_C57-LTC99_P24_250K-CTCF-AB2_S11_R1.bigWig GeneralR_script_CHIP_CUT/BigWigBash/SJHGG059115_C19-LTC42_P28_REP1.mLb.clN.sorted.bw GeneralR_script_CHIP_CUT/BigWigBash/SJHGG066267_C8-LTC99_P29_REP1.mLb.clN.sorted.bw \
 -R GeneralR_script_CHIP_CUT/BEDFiles/OverlapsBetweenUniqueRegionsCTCF/UniqueCNR_LTC42.bed GeneralR_script_CHIP_CUT/BEDFiles/OverlapsBetweenUniqueRegionsCTCF/UniqueCNR_LTC99.bed GeneralR_script_CHIP_CUT/BEDFiles/OverlapsBetweenUniqueRegionsCTCF/OverlappedUniqueCNR.bed \
 --downstream 2000 \
 --upstream 2000 \
 -o GeneralR_script_CHIP_CUT/MatrixMaking/MatatrixWithAttack/CTCF_Unique_Peak_Comparison_CNR.gz\
 -p 8'

