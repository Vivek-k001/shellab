read -p "Enter the filename: " file
read -p "Enter the old word to replace: " old
read -p "Enter the new word: " new

echo "File before replacement:"
cat "$file"

read -p "Replace in entire file? (y/n): " yn

if [[ $yn == "y" || $yn == "Y" ]]; then
sed -i "s/$old/$new/g" "$file"

elif [[ $yn == "n" || $yn == "N" ]]; then
read -p "Enter start line: " start
read -p "Enter number of lines: " count

end=$((start + count - 1))

sed -i "${start},${end}s/$old/$new/g" "$file"

else
echo "Invalid input"
fi

echo "File after replacement:"
cat "$file"
