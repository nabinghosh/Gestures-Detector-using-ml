filename="example.txt"   
target_word="new_word"  
text=$(cat "$filename")
IFS=' ' read -ra words <<< "$text"
for i in "${!words[@]}"; do
    if (( ($i + 1) % 5 == 0 )); then    
        words[$i]=$target_word
    fi
done
new_text=$(IFS=' '; echo "${words[*]}")
echo "$new_text" > "$filename"
# 
if [ -z "$1" ]; then
    echo "Please provide a file path."
    exit 1
fi
if [ ! -f "$1" ]; then
    echo "File does not exist."
    exit 1
fi
i=0
while read -r word; do
    i=$((i+1))
    if [ $((i%5)) -eq 0 ]; then
        echo "REPLACED"
    else
        echo "$word"
    fi
done < "$1"