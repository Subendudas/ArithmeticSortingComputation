 #! /bin/bash -x
#print 10 random 3 digit number
num=$(( $RANDOM%999 ))
if [ $num -ge 100 ] && [ $num -lt 1000 ]
then
	for i in `seq 10`;(i++)
do
                echo $num
done
fi
