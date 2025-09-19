#!/bin/bash
#SBATCH --job-name=errtest
#SBATCH --ntasks=1
#SBATCH --nodes=1             
#SBATCH --mem=100mb                    
#SBATCH --time=00:03:00   
#SBATCH --partition=windfall
#SBATCH --account=windfall

#I think this has to do with a broken e key or something
set -e

#First, let's clear the pipes
echo ",:,,:,,:,,::,:,:,:::::,::,,,,,,:,,:,,:::,,,,,,,,,,,,,,,:,,,,,,,,,,,,,,,,,,,,,,.,
:,:,:::~:::,,,,,,::,:,:D~,,8,,,7:8DM:8:8,8,8~,,,,:,,,,,,,,,,,,,,,,,,,,,,,.,,,,..
,::,,,,:,,,,,,,,,,,,,,,Z,,+8+,,Z.,,I:+,::+,,~,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,..
:,::,::::,,,,:,:,,:,,,,,:,,,,,:,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,.,,,,,,,,,,,,,,,,..
,,:,,,,,,,,,,,,,,,,::,:,,,,,,,,:,,:,,,,,,,,,,,,,,,,,,,,,,,:,,,,,..,,,,,,,,,,,,,.
,,,,,:,,,,,,,,,,,,,,,,,:,,,,,,,,,,,,,,,,,,,,,,,,,,,.,,,,,,,,,,,,,,,,,...Z.,,.,..
,,,,,,,,,,,,,,,,,,:,::,,,,,,,:,,,,,,,,,,,,,,,,,,,,,,,,.,,,,.,,,,,,.:8IM,,,,,,...
,,,,,,,:,,,,,,,:,,:,::,,:,:,:~,,,,,:,,,,,,,,,,,,,,,,,,,,,,,,,,,=$,~O,,,,,,,,,.,.
,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,.,,,,,,:.N+=8?.,,,,,,,.,,....
,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,.,.=8:,,.7,,,..==I7D.,,,,,..,,,,,,.,,..
,:,,,,,:,,,,,:,,,,,,,,,,,,,,,::,,,,,:,,~,ZMZIMI,+,?M=$+$M:,:,:,,,,,,,,,,,,,,,,.,
,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,~MN$DD$,,$,,OO7I?M.,,,,,,,,,,,,,.,,,,,,,,,,.
,,,,,,,,,,~,,,,,,,,,,,,,,,,,,,,,,,,,OZO8I7=$7,.7$I,:,..,,,..,,,,,,...,.,,,,,,,,.
,,,,,,,,,,:,,,,:,,,:::,:,:,,,,,,,,7:7$O=?D~,:I~,:,:$.,,,,,,,,,,,,,,,,,,,,,,,.,..
,,,,,,,.,,,,,,,,:,,,,,:,:,,,,,,,,,?M=I=:~7.O++:O+Z,,,,,,.,,,,,,,,,,.,,,,,,,,.,.,
,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,~8MZ$I:?.$8,O~,,Z+:,,,,,.,,,,,,,,..,,,,,,,,,,..
,,,,,,,,,,,,D,,:,7=,7+,,,:,,,,,,:OM8O,,O,,,,:Z8=:$~~8,,,,,,,,,,,,,,.,,,,,,,,,,..
,,,,,+++?IM?I+::I:Z,,~7+7~O?,$IZDM++O++$?.,:Z:IZMZDI=,,,,,,,,,,,,,,,,,,,,,,,,,..
,,,,8?IM,=?+I,~=++~I:,,,I?+=,$N~+N$7OI?,O.=IO,,,DD:NZN,,,,,,,,,,,,,,,,,,,,,,,,..
,,,,?:Z:,,=,~7,,:D::,,,+,:I?:,$$7NZ?===7:::7:,,::,:,,:,,,,,,,,,,,,,,,,,,,,,,,,.,
,,:,,=:,,~Z7I?,,:,,:=O~:::=,,=?ZIMOO7,,,?ZD,$7:,~:,:::,,,,,:,,,,,,,,,,,,,,,,,,..
,:::,8~I,DZ?,,:?,:?,:8:,.,,,:.,.N8+88,.,:=I:O.,,,,,,,,,,,,,,,,,,,,,,,,,.,,,,,,..
,,,::,Z:~8:$,,~::$O=I=NI77,:?:=DN+N,OZ???D8,M,,,,,,,,,,,,,,,,,,,,,,,,,,.,,,,,,..
,:,,,,:::O~:,:7,~=ND:M7$N7:OIZ?DMMZZ?7+8O.I8+:,:::,,,:,,,,,.,,:,,,,,,,,,,,,,.,..
:,,:,::,:O+,,=?:,N7,+:,,,:+ZDOM7M8M~,:+8MMZI,I:,,,,,:,,,,,,,,,,,,,,.,,,,,,,,,...
,,::,=?7+OOO,,,:D$8OM::::,,,ZIIZN~DZZ7~8:,=O:~,,,,,,,,,,.,,,,,,,,,.,,.,.,,,,,,..
::,::=:?.:+D:I?NNIO:::,:::::,,,::N:7Z::,:,,,8?+,,,,,,,,:,:,,:,,,,,,,,,,,,,,,,...
:,,,,,OI~:I8DNZI:=I,,,,,,,,,,,,,,M,,N,,,,,,,,8M7:,,,,,,,.,,,,:,,,:,,,,,,,,,:,,..
,,,,,:7::N7$I$Z,:,,,,,,,,,,,,,,,,~Z,M,,,,,,8?MM,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,..
,:,::NZ~,:==M~,,,::,::,::,:,,,,,,:Z~D,,,,~MN=D~~:,::,,,:,,,:::,,,,,,,,,,,,,,,,,,
,,,,,MI:,DZ:,,,,:,,,,,,,:,,,,,,,,=M?,,,:8MN7,.,,,::,,:,,:,::::::,:,,,,,,,,,:,,,,
,::::$:::O7,,,,,:::,:,,,,,,,,,,,:8MI,,:~=MO,,,,,,:,,,,,,,,,,,,,:,,,,,,,,,,,,,,..
:,:::==:MI=~M~:=:,:,~+:.:ON,,M.D:DM~:::~$?::,,,:,,,,:,,,,,,,,,,,,,,,,,,,,,,,,,..
,:,,7MZ~$MII,Z7O,:MI:~8=:~N.,N,,?8M::::=OM$I~:,.:,~:::,,N8MMN8OOI,:~:.:,,,,,,,,,
,:,:DMD~8DZI:,78,$O=,:O,,,,,,,,,,?M=M,,,:O+++8DDD$?:,:=O,,OZDNZ~.ON:,=N,,M,~,,,,
::,,+OZD=:N7ZZ$O+=,?+,,:,:,.~$ODOOMN?ND,,,:O$NN7:++:,,,,.,,:,OM+,8,,M,,,,,,,,,,,
,,::Z?7=DM=NO:+,:,,:::~,::,:,$?:ZOOM+~M8:,,,,:::,:,,,,,,,,,,,,,:,,,,,,,,,,,,,,,,
:,,:,:$I7=~~:,,,,,::,,::,,.,,,,,7:,,,,,,,,,,,,:,,,,,,,,,,,,,:::::,,,,,,,,,,:,,,,
,,,:::::,:,:::,,:::::,:,::,,,:,,:::,:,::,,:,,,,,::,,,,:,,,,,,,,,,,,,,,.,,,,,,,,,
                                                                 GlassGiant.com"

#made from https://en.wikipedia.org/wiki/Unicorn#/media/File:Oftheunicorn.jpg

#Now, we want to "initialize" some things. That sounds official!
date
cd ~/ccbb_projects/
pwd
hostname
mkdir -p outputs
wget https://raw.githubusercontent.com/cusanovich/cmm522_code/main/gene_results.txt -O outputs/new_gene_results.txt
cat outputs/new_gene_results.txt

touch ./outputs/an_important_file.txt
touch ./outputs/we_might_need_this.txt

#Let's check if that all worked
for file in ./outputs/*
do
	echo "$file"
done

#Always good to check on my favorite program
target_string="puma"
piped_output=$(scontrol show config | grep ClusterName | cut -f2 -d"=")

if [[ "$piped_output" == "$target_string" ]]; then
  module load bedtools/2.31.1
else
  module load bedtools2/2.29.2
fi
bedtools -h

#We need a for loop to keep track of all the files in the working directory
x=1
for file in ./*
do
	echo "There are at least $x files in this directory
	x=$(( x+1 ))
done

#This script just seems to work better if I let it sleep
sleep 2m


#After that, the script always seems a little groggy, so I like to give it a while loop to wake up
x=10
while  [ $x -ge 5 ]
do
	echo "Let me sleep $x more seconds..."
	x=$(( x-1 ))
done

#Cleaning up a little
rm -R outputs/

echo "The answer is: 42"
