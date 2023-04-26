myPass="qwerty12"
for i in 2 1 0
do
	printf 'Enter password : '
	read password
	if [ "$myPass" = "$password" ]
	then
		echo Access granted
		break
	else
		echo Incorrect Password
		echo $i tries left.
		if [ $i -eq 0 ]
		then
			exit
		fi
	fi
done

printf '    MAIN MENU\n-----------------------\n1 List files modified in a specific month and day\n2 List files exceeding a certain size\n3 List regular files in a directory\n4 List users with IDs above a threshold\n5 Exit'
while [ 1 ]
do
	printf '\n-----------------------\nEnter your choice : '
	read opt
	case $opt in
	1)
                printf 'Enter the name of month : '
                read month
		printf 'Enter the day : '
                read day
                ls -l | tr -s ' ' | cut -d ' ' -f 7,8,10 | grep ^"$month" | while read MMM DD fileName
		do
                        if [ $day -eq $DD ]
                        then
                                echo $MMM $DD $fileName
                        fi
                done
                ;;
        2)
                printf 'Enter size : '
                read sizeInput
                ls -l | grep ^"-" | tr -s ' ' | cut -d ' ' -f 6,10 | while read size fileName
                do
                        if [ $size -gt $sizeInput ]
                        then
                                echo $size $fileName
                        fi
                done
                ;;
        3)
                ls -l | tr -s ' ' | cut -d ' ' -f 1,10 | grep ^"-"
                ;;
        4)
                echo -n "Enter the UID threshold : "
                read threshold

                ps -el | tr -s ' ' | cut -d ' ' -f 7,9 | tail -n +2 | while read ID1 name
                do
                        if [ $ID1 -gt $threshold ]
                        then
                                echo $ID1 $name

                        fi
                done
                ;;
        *)
		printf 'Invalid Choice'
		;;
	esac
done