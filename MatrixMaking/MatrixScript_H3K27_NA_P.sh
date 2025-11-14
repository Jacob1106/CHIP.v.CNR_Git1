#H3K27:

module load deeptools/3.5.6

bsub -P baker -J 'computeMatrix5' -N -n 8 -R "rusage[mem=16GB]" -R "span[hosts=1]" -q priority  \
 'computeMatrix reference-point -S \ GeneralR_script_CHIP_CUT/BigWigBash/h3k27_CHIP.bigWig GeneralR_script_CHIP_CUT/BigWigBash/H3K27_CNR.bigWig \
 -R \ GeneralR_script_CHIP_CUT/BEDFiles/H3K27_BED/uniqueCHIP_NA_P.bed GeneralR_script_CHIP_CUT/BEDFiles/H3K27_BED/uniqueCNR_NA_P.bed GeneralR_script_CHIP_CUT/BEDFiles/H3K27_BED/overlap_CNR_NA_P.bed \
 --downstream 2000 \
 --upstream 2000 \
 -o GeneralR_script_CHIP_CUT/MatrixMaking/H3K27_NA_P.gz \
 -p 8'



