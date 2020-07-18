echo "*****WELCOME TO FILE MANAGEMENT SYSTEM*****"
echo "Enter name of the directory to enter: "
read direc
cd $direc
echo "Entered into given directory Successfully."

i="y"
while [ $i = "y" ]
do

echo "1. Create a new File"
echo "2. Create a new Directory"
echo "3. Search File"
echo "4. Search for a Directory"
echo "5. Delete File"
echo "6. Rename File"
echo "7. Content in Directory"
echo "8. View Directories"
echo "9. Go back to main directory and enter into another directory"
echo "10. Exit"
echo "Enter Your Choice"
read choice

case $choice in
1)
echo "Enter new file name to be created: "
read fname
if [ -f $fname ]
then
echo "File already exists"

else
touch $fname
echo "File Successfully Created" $dname1
fi;;

2)
echo "Enter new Directory Name: "
read dname
if [ -f $dname ]
then
echo "Directory already exists"

else
mkdir $dname
cd $dname
echo "Directory Successfully Created"
fi;;

3)
echo "Enter File Name:"
read sname
if [ -f $sname ]
then
echo "File exists"

else
echo "No Such File Exists"
fi;;

4)
echo "Enter Directory Name:"
read searchdname
if [ -d $searchdname ]
then
echo "Directory exists"

else
echo "No Such Directory Exists"
fi;;
5)
echo "Enter the file to be deleted: "
read dname1
if [ -f $dname1 ]
then
rm $dname1
echo "File Successfully Deleted"

else
echo "No Such file Exists"
fi;;

6)
echo "Enter the file name to be renamed: "
read old_fname
echo "Enter the new file name: "
read new_fname
mv $old_fname $new_fname ;;

7)
ls ;;


8)
echo "Directory S"
pwd ;;

9)
cd ~
echo "You have come back to home directory"
echo "Enter the name of directory"
read dname1
cd ~/$dname1
echo "switched to" $dname1;;

10)
i="n";;
esac
done
