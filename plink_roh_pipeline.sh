#!/bin/bash

plink --file family2_raw --make-bed --out family2_qc0

plink --bfile family2_qc0 --geno 0.05 --mind 0.02 --maf 0.01 --make-bed --out family2_qc1

plink --bfile family2_qc1 \
 --homozyg \
 --homozyg-window-snp 50 \
 --homozyg-window-het 1 \
 --homozyg-window-missing 5 \
 --homozyg-window-threshold 0.05 \
 --homozyg-snp 100 \
 --homozyg-kb 1000 \
 --homozyg-gap 1000 \
 --homozyg-density 50 \
 --homozyg-window-scan \
 --out family2_roh
