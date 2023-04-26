if [ $# -ne 1 ]
then
	echo Wrong number of inputs
	exit
fi

if [ ! -d "$1" ]
then
	echo File does not exist!!
	exit
fi

cd $1

ls -l | grep ^"-rwx"