#! /bin/bash

Head=0
Tail=0

for (( i=0; i<10; i++ ))
do
	ran=$((RANDOM%2))
	if [ $ran -eq 0 ]
	then
		((Head++))
	else
		((Tail++))
	fi
done

echo "Head: $Head"
echo "Tail: $Tail"

if [ $Head -gt $Tail ]
then
	echo "Head is Winner"
elif [ $Head -eq $Tail ]
then
	echo "Tie"
else
	echo "Tail is Winner"
fi
