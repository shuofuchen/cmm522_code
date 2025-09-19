#!/bin/bash
#SBATCH --job-name=make_HW3Q2mailresults        
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=1gb
#SBATCH --time=00:03:00
#SBATCH --partition=windfall
#SBATCH --account=windfall
#SBATCH --mail-type=END
#SBATCH --mail-user=shuofuchen@arizona.edu

x=1

# while loop
while [ $x -le 10 ]
do
    echo "Our hypothesis is right" > important_results${x}.txt
    echo "File important_results${x}.txt created."
    x=$((x+1))
done