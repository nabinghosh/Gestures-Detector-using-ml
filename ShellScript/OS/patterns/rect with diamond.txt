#		* * * * * * * * *
#		* * * *   * * * *
#		* * *       * * *
#		* *           * *
#		*               *
#		* *           * *
#		* * *       * * *
#		* * * *   * * * *
#		* * * * * * * * *

echo -n "Enter the number of lines : "
read line

if [ $((line%2)) -eq 0 ]
then
	echo "Enter an odd number!"
	exit
fi

i=1
j=1

while [ $i -le $line ]
do
	j=1
	while [ $j -le $line ]
	do
		if [ $((i+j)) -le $((line/2 +2)) ] || [ $((i+j)) -ge $(($((3*line))/2 +1)) ] || [ $((j-i)) -ge $((line/2)) ] || [ $((i-j)) -ge $((line/2)) ]
		then
			echo -n "* "
		else
			echo -n "  "
		fi
		j=$((j+1))
	done
	i=$((i+1))
	echo
done