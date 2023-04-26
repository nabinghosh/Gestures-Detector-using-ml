printf 'Enter your marks : '
read marks
if [ $marks -ge 90 ]
then
        echo O
elif [ $marks -ge 80 ]
then
        echo E
elif [ $marks -ge 70 ]
then
        echo A
elif [ $marks -ge 60 ]
then
        echo B
elif [ $marks -ge 50 ]
then
        echo C
elif [ $marks -ge 40 ]
then
        echo D
else
        echo F
fi