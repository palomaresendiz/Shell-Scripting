# NAME : Paloma Resendiz
# CS 4350 – Unix Systems Programming 
# Section Number : 001
# Assignment Number : 2
# Due Date : 9 / 18 / 2023 no later than 5:15 pm

echo "This Script is Designed and Implemented by Paloma Resendiz 

The function of This script is to :

1. Display the integer arguments that are entered.
2. Display the smallest of the integer arguments
3. Display the largest of the integer arguments
4. Sum of the 3 integer arguments .
5. Product of the 3 integer arguments.
6. Average of the 3 integer arguments.
7. Square of each integer argument.
8. Determine that each integer argument is positive, negative or
zero.
9. Determine that each integer argument is odd, or even
10. Find all even numbers between 1 and the first integer
argument.
11. Find all odd numbers between 1 and the third integer
argument.
12. Find the factorial of the last integer argument.
13. Determine whether or not the second integer argument is a
prime number.
14. Calculating Distinct Sequence of the second integer"

read -p "Enter 3 integer Values - - - - > " num1 num2 num3

echo ""
echo "1) You Entered   $num1  $num2  $num3"

echo -n "2)"
if [ $num1 -lt $num2 ] && [ $num1 -lt $num3 ]
then
	echo -n " The smallest integer is $num1"
elif [ $num2 -lt $num1 ] && [ $num2 -lt $num3 ]
then
	echo -n " The smallest integer is $num2"
else
	echo -n " The smallest integer is $num3"
fi 
echo " "
echo -n "3)"
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
	echo -n " The largest integer is $num1"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
	echo -n " The largest integer is $num2"
else
	echo -n " The largest integer is $num3"
fi
echo " "

sum=$((num1+num2+num3))
echo "4) $num1 + $num2 + $num3 = $sum"

product=$((num1*num2*num3))
echo "5) $num1 * $num2 * $num3 = $product"

avg=$((sum/3))
echo "6) ($num1 + $num2 + $num3)/3 = $avg"

square1=$((num1*num1))
square2=$((num2*num2))
square3=$((num3*num3))

echo "7) $num1 * $num1 = $square1, $num2 * $num2 = $square2, $num3 * $num3 = $square3"

echo -n "8) "
if [ $num1 -gt 0 ]
then
	echo -n "$num1 is positive, "
else
	echo -n "$num1 is negative, "
fi
if [ $num2 -gt 0 ]
then
        echo -n "$num2 is positive, "
else
        echo -n "$num2 is negative, "
fi
if [ $num3 -gt 0 ]
then
        echo "$num3 is positive"
else
        echo "$num3 is negative"
fi

echo -n "9) "
if [ $((num1 % 2)) =  0 ]
then
        echo -n "$num1 is even, "
else
        echo -n "$num1 is odd, "
fi
if [ $((num2 % 2)) = 0 ]
then
        echo -n "$num2 is even, "
else
        echo -n "$num2 is odd, "
fi
if [ $((num3 % 2)) = 0 ]
then
        echo "$num3 is even"
else
        echo "$num3 is odd"
fi

echo -n "10) All even numbers between 1 and $num1 are: "
for i in $(seq 0 $num1)
do
	if [ $(expr $i % 2) = 0 ]
	then
		echo -n "$i, "
	fi
done
echo ""

echo -n "11) All odd numbers between 1 and $num3 are: "
for i in $(seq 0 $num3)
do
        if [ $(expr $i % 2) = 1 ]
        then
                echo -n "$i, "
        fi
done
echo ""

echo -n "12) Factorial of $num3 is: "
factorial=1
for ((i=2; i<=num3;i++))
do
	factorial=$((factorial*$i))
done
echo $factorial
	
echo -n "13) $num2 is "
i=2
f=0
while [ $i -le $((num2 / 2)) ]
do
	if [ $((num2 % i)) -eq 0 ]
	then
		f=1
	fi
	i=$((i + 1))
done
if [ $f -eq 1 ]
then
	echo "not prime"
else
	echo "prime"
fi

echo -n "14) Distinct sequence for the integer $num2 is: "
seq=$num2
while [ $seq != 1 ]
do
	echo -n "$seq, "
	if [ $((seq % 2)) = 0 ]
	then
		seq=$((seq/2))
	else
		seq=$((seq*3+1))
	fi
done
echo -n $seq
echo ""

echo""
echo "End of script"
echo "Paloma Resendiz - 9 - 18 - 2023"
exit
