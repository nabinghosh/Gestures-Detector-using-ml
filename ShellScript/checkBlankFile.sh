if [ $(wc -c < "$1") -eq 0 ]
then
        echo File empty
else
        echo File not empty
fi