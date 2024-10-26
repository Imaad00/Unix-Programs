#shell script (using grep) that accept a list of filenames as its argument, count and report occurrence of each word that is present in the first argument file on other argument files.
#!/bin/bash
if [ $# -lt 2 ]
then
echo "arugments has be 2"
exit
fi
for word in $(cat $1)
do
for file in $*
do
if [ "$file" != "$1" ]
then
res=$(grep -iow "$word" $file|wc -w)
echo The word frequency of --$word--in file $file is: $res
fi
done
done