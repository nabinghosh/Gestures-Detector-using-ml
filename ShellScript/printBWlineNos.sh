if [ $# -ne 3 ]
then
	echo Wrong number of inputs
	exit
fi

if [ ! -f "$1" ]
then
	echo File does not exist!!
	exit
fi

if [ $(wc -c < "$1") -eq 0 ]
then
        echo File is empty
	exit
fi

if [ $(wc -l < "$1") -lt $3 ]
then
        echo File does not contain that many lines
	exit
fi

head -$3 $1 | tail -$(($3 - $2))