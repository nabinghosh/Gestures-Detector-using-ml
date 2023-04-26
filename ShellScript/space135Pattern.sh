#		         *
#		       * * *
#		     * * * * *
#		   * * * * * * *
#		 * * * * * * * * *

echo -n "Enter the number of lines : "
read line

i=0
j=0
k=0

while [ $i -lt $line ]
do
        j=$i
        while [ $j -lt $line ]
        do
                echo -n "  "
                j=$((j+1))
        done
        k=$((2*i +1))
        while [ $k -gt 0 ]
        do
                echo -n "* "
                k=$((k-1))
        done
        i=$((i+1))
        echo ""
done