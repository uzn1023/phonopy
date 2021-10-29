for input in `ls supercell-*.in`
do
    cat header.in $input >| headeradd_$input
done

for input in `ls headeradd_supercell-*.in`
do
    cut=${input#headeradd_}
    output=${cut/in/out}
    mpirun pw.x -i $input |& tee $output
done