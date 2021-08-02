#!/bin/bash

git submodule update --init
cd /mnt/data6t/QsComp/cov/GDC2/gdc_2/Gdc2
cd GDC2/gdc_2/Gdc2
make
cd ../../../
cp GDC2/gdc_2/Gdc2/gdc2 ./

cp gdc2 d1
cp gdc2 d2

cd d1 
./gdc2 d list1
cd ../d2
./gdc2 d list2
cd ../
