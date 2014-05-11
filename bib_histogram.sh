if [ $1 ]
then # parse years of all refs from bbl file
    grep \([1-2][0-9][0-9][0-9]\) $1 | awk '{print $NF}' | tr "(" " " | tr ")." " "
else
    echo "Usage: bib_histogram.sh [file.bbl]"
fi