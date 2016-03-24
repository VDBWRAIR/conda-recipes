#!/bin/sh
export LD_LIBRARY_PATH=${PREFIX}/lib
export LIBRARY_PATH=$LD_LIBRARY_PATH
export C_INCLUDE_PATH=${PREFIX}/include:${PREFIX}/include/ncurses
ls $LD_LIBRARY_PATH
sed -i "s/\s8000/ 1/" bam_plcmd.c
sed -i 's/-lcurses/-lncurses/' Makefile
make
mkdir -p $PREFIX/bin
mv samtools $PREFIX/bin
mv bcftools/bcftools $PREFIX/bin
mv bcftools/vcfutils.pl $PREFIX/bin
mkdir -p $PREFIX/lib
