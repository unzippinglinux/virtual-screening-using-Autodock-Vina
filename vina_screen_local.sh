#! /bin/bash

for f in ligand_*.pdbqt; do
    b=`basename $f .pdbqt`
    echo Processing ligand $b
    mkdir -p $b
    vina --config conf.txt --cpu 3 --ligand $f --out ${b}/out.pdbqt --log ${b}/log.txt
done
