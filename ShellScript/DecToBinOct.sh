printf 'Enter the Decimal Number : '
read dec
printf '\n-------------------\nEnter\n2 for Binary\n8 for Octal'
base=10
while [ $base -ne 2 ] && [ $base -ne 8 ]
do
	printf '\n-------------------\nEnter your choice : '
	read base
done

temp=1
num=0

while [ $dec -gt 0 ]
do
	remainder=$((dec%base))
	num=$((num + remainder*temp))
	temp=$((temp*10))
	dec=$((dec/base))
done
echo $num