conda activate phonopy
phonopy --qe -d --dim="2 2 2" -c BiVO4.in
bash run_scf.sh

s=""
for output in `ls supercell-*.out`
do
    s+=$output
    s+=" "
done

phonopy --qe -f $sphonopy --qe -c BiVO4.in -p -s band.conf