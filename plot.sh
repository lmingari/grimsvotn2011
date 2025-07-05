#!/bin/bash

BIN="./plotter.py"

key="tephra_con_layer"
levels="0.1 0.2 0.4 1 2 4 10"

#key="tephra_col_mass"
#levels="1 2 4 10 20 40 100"

for it in {0..99}
do
   $BIN --key ${key} \
        --netcdf grimsvotn2011.res.nc \
        --levels ${levels} \
        --lat 64.416 \
        --lon -17.316 \
        --time ${it}
done
