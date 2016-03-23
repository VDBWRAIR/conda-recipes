#!/bin/sh
sed -i "s/\s8000/ 1/" bam_plcmd.c
make
mkdir -p $PREFIX/bin
mv samtools $PREFIX/bin
mv bcftools/bcftools $PREFIX/bin
mv bcftools/vcfutils.pl $PREFIX/bin
mkdir -p $PREFIX/lib
