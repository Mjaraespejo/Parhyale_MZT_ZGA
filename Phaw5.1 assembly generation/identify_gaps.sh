#!/bin/bash 

#Script used to run Canu on parhyale draft assembly (without gap-filling) - https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1009860#sec006

#/drives/raid/AboobakerLab/software/MaSuRCA-4.0.9/bin/samba.sh -r /drives/raid/AboobakerLab/data/genomes/phaw/parhyale_hawaiensis_15Feb20182_1IWOV.fa -q /drives/raid/AboobakerLab/manuel/data_phaw_analysis/asm_gap_filling/TGS-GapCloser_anlysis/m64164_211030_095407.hifi.subreads.fa -t 30 -d asm -m 5000 -o 1000 -a 


# nohup ./run_samba.sh > samba.out 2>&1 & 

#26/05/2022

#Run samba on contigs after splitting assembly (I used gapless split output file containing 692663 contigs)

#/drives/raid/AboobakerLab/software/MaSuRCA-4.0.9/bin/samba.sh -r /drives/ssd1/manuel/phaw/2022_analysis/asm_gapless_analysis/gapless_run/pass1/gapless_split.fa -q /drives/raid/AboobakerLab/manuel/data_phaw_analysis/asm_gap_filling/TGS-GapCloser_anlysis/m64164_211030_095407.hifi.subreads.fa -t 30 -d asm -m 5000 -o 1000 -a 

#The output using splt assembly from gapless didn't look ok, so I deleted the files. Samba doesn't break the scaffols into inputs by default.

#Instead, I run samba using as input the TGS-Gapcloser output file

/drives/raid/AboobakerLab/software/MaSuRCA-4.0.9/bin/samba.sh -r /drives/raid/AboobakerLab/manuel/data_phaw_analysis/asm_gap_filling/TGS-GapCloser_anlysis/wholeGenome_analysis/phaw_fullASm.scaff_seqs -q /drives/raid/AboobakerLab/manuel/data_phaw_analysis/asm_gap_filling/TGS-GapCloser_anlysis/m64164_211030_095407.hifi.subreads.fa -t 30 -d asm -m 5000 -o 1000 -a