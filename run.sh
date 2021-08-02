#!/bin/bash

git submodule add GDC2
cd GDC2/gdc_2/Gdc2
make
cd ../../../
cp GDC2/gdc_2/Gdc2/gdc2 ./
cp makefile.linux Makefile

cp ../../GDC2/gdc_2/Gdc2/Makefile GDC2/gdc_2/Gdc2/

make

cp gdc2 d1
cp gdc2 d2

cd d1 
./gdc2 d list1
cd ../d2
./gdc2 d list2
cd ../
