#shell script that accepts a path name creates all the components in that path name as directories.
#!/bin/bash
echo "enter pathname"
read p
i=1 j=1
len=$(echo $p|wc -c)
while [ $i -le $len ]
do
x=$(echo $p|cut -d / -f $j)
namelen=$(echo $x|wc -c)
mkdir $x
cd $x
pwd
j=$(expr $j + 1)
i=$(expr $i + $namelen)
echo $g
done
