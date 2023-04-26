avg=0
for i in 0 1 2 3 4 5 6
do
	echo -n "Enter the temperature for Day $((i +1))  : "
	read temp
	day[$i]=$temp
	avg=$((avg+temp))
done
echo "Average Temperature : $((avg/7))"