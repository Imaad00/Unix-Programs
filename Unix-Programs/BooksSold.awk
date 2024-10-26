BEGIN {
print "Total number of books sold in each category"
}
{ books[$1]+=$2 }
END {
item=1
for(item in books)
{
printf ("%s%s%d\n",item,"=",books[item])
total+=books[item]
}
printf("%s%s%d\n","Total books sold","=",total)
}