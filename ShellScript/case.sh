printf '    MAIN MENU\n-----------------------\n1 Sum of Digits\n2 Reverse a Number\n3 Check Palindrome\n4 Check Armstrong\n5 Check Prime\n6 Basic Calculator\n7 Exit'
while [ 1 ]
do
	printf '\n-----------------------\nEnter your choice : '
	read opt
	case $opt in
	1)
		printf '\nEnter the number : '
		read num

		summ=0
		while [ $num -gt 0 ]
		do
			summ=$(( summ + num%10))
			num=$((num/10))
		done
		echo "Sum of Digits : $summ"
		;;
	2)
		printf '\nEnter the number : '
		read num

		newNum=0
		while [ $num -gt 0 ]
		do
			newNum=$(( newNum*10 + num%10))
			num=$((num/10))
		done
		echo "Reverse : $newNum"
		;;
	3)
		read -p '\nEnter the number : ' num

		numCopy=$num
		newNum=0
		while [ $num -gt 0 ]
		do
			newNum=$(( newNum*10 + num%10))
			num=$((num/10))
		done
		if [ $newNum -eq $numCopy ]
		then
			echo Palindrome
		else
			echo Not Palindrome
		fi
		;;
	4)
		printf '\nEnter the number : '
		read num

		numCopy=$num
		numCopy_a=$num
		k=0
		newNum=0
		while [ $numCopy_a -gt 0 ]
		do
			numCopy_a=$((numCopy_a/10))
			k=$((k+1))
		done
		while [ $num -gt 0 ]
		do
			newNum=$(( newNum + $((num%10))**k))
			num=$((num/10))
		done
		if [ $newNum -eq $numCopy ]
		then
			echo Armstrong
		else
			echo Not Armstrong
		fi
		;;
	5)
		printf '\nEnter the number : '
		read num

		num_sqrt=`awk "END{print sqrt($num)}" </dev/null`
		num_sqrt=$( printf "%.0f" $num_sqrt)
		i=2
		k=0

		while [ $i -le $num_sqrt ]
		do
			remainder=$((num%i))
			if [ $remainder -eq 0 ]
			then
				k=$((k+1))
				echo Not Prime
				break
			fi
			i=$((i+1))
		done
		if [ $k -eq 0 ]
		then
			echo Prime
		fi
		;;
	6)
		printf '   BASIC CALCULATOR\n-----------------------\nI   Addition\nII  Subtraction\nIII Multiplication\nIV  Division\nV   Return to Main Menu'
		while [ 1 ]
		do
			printf '\n-----------------------\nEnter your choice : '
			read opt_bc
			case $opt_bc in
			I)
				echo "Enter two numbers :"
				read a
				read b
				result=$((a+b))
				echo "Result: $result"
				;;
			II)
				echo "Enter two numbers :"
				read a
				read b
				result=$((a-b))
				echo "Result: $result"
				;;
			III)
				echo "Enter two numbers :"
				read a
				read b
				result=$((a*b))
				echo "Result: $result"
				;;
			IV)
				echo "Enter two numbers :"
				read a
				read b
				printf 'Result: '
				printf "%f\n" $((10**4 *a/b))e-4
				;;
			V)
				break
				;;
			*)
				echo Invalid Choice
				;;
			esac
		done
		printf '    MAIN MENU\n-----------------------\n1 Sum of Digits\n2 Reverse a Number\n3 Check Palindrome\n4 Check Armstrong\n5 Check Prime\n6 Basic Calculator\n7 Exit'
		;;
	7)
		exit
		;;
	*)
		printf 'Invalid Choice'
		;;
	esac
done