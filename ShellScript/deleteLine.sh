if [ $# -ne 2 ]
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

grep -v "$2" $1