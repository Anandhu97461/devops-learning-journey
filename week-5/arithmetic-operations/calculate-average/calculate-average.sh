num1=$1
num2=$2
num3=$3
sum=$(( num1 + num2 + num3 ))
average=$(echo "$sum / 3" | bc -l)
echo $average