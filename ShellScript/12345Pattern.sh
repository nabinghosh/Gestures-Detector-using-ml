#               *
#               * *
#               * * *
#               * * * *
#               * * * * *

echo -n "Enter the number of lines : "
read line

i=1
j=1

while [ $i -le $line ]
do
        j=1
        while [ $j -le $i ]
        do
                echo -n "* "
                j=$((j+1))
        done
        i=$((i+1))
        echo ""
done