if [ $# -ne 2 ]; then
    echo "Usage: $0 dir1 dir2"
    exit 1
fi
dir1="$1"
dir2="$2"
for file in "$dir1"/*; do
    filename=$(basename "$file")
    if [ -e "$dir2/$filename" ]; then
        if cmp -s "$file" "$dir2/$filename"; then
            rm "$file"
            echo "Removed $file because it had the same content as $dir2/$filename."
        fi
    fi
done