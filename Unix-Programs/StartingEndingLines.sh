#Shell script (using sed) that accepts a filename, starting and ending line numbers as arguments and displays all the lines between the given line numbers.
#!/bin/bash
echo Enter filename
read fname
echo Enter starting line number
read s
echo Enter ending line number
read e
sed -n $s,$e\p $fname|cat >newfile
cat newfile