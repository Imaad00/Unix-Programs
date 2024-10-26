#shell script that accepts two file names as arguments, checks if the permissions for these files are identical and if the permission are identical
#!/bin/bash
if [ $# -eq 0 ]
then
echo "arguments not entered try again"
else
ls -l $1 >f1
x=$(cut -c 2-10 f1)
ls -l $2 >f2
y=$(cut -c 2-10 f2)
if [ $x = $y ]
then
echo "Permission for both files are same"
echo $x
else
echo "Permission are different"
echo $x
echo $y