#!/bin/bash

#Basic while loop
counter=-5
while [ $counter -le 10 ]; do
    echo $counter
    ((counter++))
done
echo While loop done

#Basic until loop
counter=0
until [ $counter -ge 10 ]; do
    echo $counter
    ((counter++))
done
echo Until loop done

#Basic for loop
names='Honza Štěpán Maxmilián Gertruda Naděžda Bruno Albín Ota Hugo Alžběta Frančeska Anders Adolf'
for name in $names; do
    echo $name
done
echo For loop with string list done

#Basic range in for loop
for value in {2..13}; do
    echo $value
done
echo For loop with range done
	     
#More of a for loop
for string in a bb ccc dddd; do
    echo $string
done
for value in {10..-3..2}; do
    echo $value
done


