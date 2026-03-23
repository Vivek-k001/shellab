echo "Enter radius:"
read r

echo | awk -v radius=$r 'BEGIN {
area = 3.14159 * radius * radius
print "Area of circle with radius", radius, "is", area
}'
