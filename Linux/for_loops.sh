#!/bin/bash
#Checks if Hawaii is in the list, and prints a statement
fav_states=('Kansas' 'California' 'Georgia' 'Washington' 'Hawaii')

found=0

for state in ${fav_states[@]};
do
    if [ $state = 'Hawaii' ]
    then
	found=1
    fi
done
if [ $found == 1 ]
then
echo "Hawaii is the best!"
else
echo "I'm not fond of Hawaii."
fi

#For loop that checks the permission of each file in filepaths
filepaths=(/etc/shadow /etc/passwd)

for file in ${filepaths[@]}
do
    echo $(ls -l $file)
done
