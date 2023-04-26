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

i=1
max=${arr[0]}
min=${arr[0]}
while [ $i -lt $n ]
do
	if [ $max -lt ${arr[$i]} ]
	then
		max=${arr[$i]}
	fi
	if [ $min -gt ${arr[$i]} ]
	then
		min=${arr[$i]}
	fi
	i=$((i+1))
done
echo "Max : $max"
echo "Min : $min"