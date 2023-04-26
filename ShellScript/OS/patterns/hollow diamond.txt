#                       *
#                     * * *
#                   * *   * *
#                 * *       * *
#               * *           * *
#                 * *       * *
#                   * *   * *
#                     * * *
#                       *

echo -n "Enter the number of lines (odd) : "
read line

i=1
j=1

if [ $((line%2)) -eq 0 ]
then
	echo "Enter an odd number!"
	exit
fi

while [ $i -le $line ]
do
	j=1
	while [ $j -le $line ]
	do
		if [ $((i+j)) -eq $((line/2 +2)) ] || [ $((i+j)) -eq $(($((3*line))/2 +1)) ] || [ $((j-i)) -eq $((line/2)) ] || [ $((i-j)) -eq $((line/2)) ]
		then
			echo -n "* "
		elif [ $i -ne 1 ] && [ $i -ne $line ] && [ $j -ne 1 ] && [ $j -ne $line ]
		then
			if [ $((i+j)) -eq $((line/2 +3)) ] || [ $((i+j)) -eq $(($((3*line))/2)) ] || [ $((j-i)) -eq $(($((line/2))-1)) ] || [ $((i-j)) -eq $(($((line/2))-1)) ]
			then
				echo -n "* "
			else
				echo -n "  "
			fi
		else
			echo -n "  "
		fi
		j=$((j+1))
	done
	i=$((i+1))
	echo
done