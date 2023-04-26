echo -n "Enter the number of elements : "
read n
i=0
echo "Enter the elements :"
while [ $i -lt $n ]
do
	read value
	arr[$i]=$value
	i=$((i+1))
done

i=0
while [ $i -lt $n ]
do
	j=0
	while [ $j -lt $((n-i-1)) ]
	do
		if [ ${arr[$j]} -gt ${arr[$((j+1))]} ]
		then
			temp=${arr[$j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi
		j=$((j+1))
	done
	i=$((i+1))
done
echo "Array : ${arr[@]}"