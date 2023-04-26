if [ $# -ne 2 ]
then
	echo Wrong number of inputs
	exit
fi

if [ ! -d "$1" ] || [ ! -d "$2" ];
then
	echo Both directories must exist!!
	exit
fi

if [ "$(find "$1" -maxdepth 0 -empty)" ] && [ "$(find "$2" -maxdepth 0 -empty)" ];
then
	echo Both directories are empty!!
	exit
fi
for file1 in "$1"/*;
do
	if [ -f "$file1" ];
	then
		basename=$(basename "$file1")
		if [ -f "$2/$basename" ];
		then
			if cmp -s "$file1" "$2/$basename";
			then
				rm "$file1"
			else
				cat "$file1" "$2/$basename" >> fileNew
				mv fileNew "$file1"
			fi
		fi
	fi
done