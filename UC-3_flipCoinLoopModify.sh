#! /bin/bash -x

Head=0
Tail=0

while true
do
	#ran=$((RANDOM%2))
	if [[ $Head -eq 21 || $Tail -eq 21 ]]
	then
		break
	else
		ran=$((RANDOM%2))
		if [[ $ran -eq 0  ]]
		then
			((Head++))
		else 
			((Tail++))
		fi
	fi
done

echo "Head: $Head"
echo "Tail: $Tail"

if [ $Head -gt $Tail ]
then
	echo "Head is Winner"
else
	echo "Tail is Winner"
fi
