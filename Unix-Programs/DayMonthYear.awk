BEGIN {
printf("Enter date:")
getline str<"/dev/tty"
split(str,a,"-")
if(a[1]>0 && a[1]<=31)
{
if(a[2]>0 && a[2]<=12)
{
system("date +%B/%A/%d/%Y -d "a[3]"-"a[2]"-"a[1]"")
}
else
{
printf("Invalid Month")
}
}
else
printf("Invalid Date")
}