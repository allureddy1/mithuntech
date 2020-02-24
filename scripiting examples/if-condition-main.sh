#!/bin/bash
echo "1 Check File is existed or not"
echo "2 Check File is read access or not"
echo "3 Check File is write access or not"
echo "4 Check File is execute access or not"
echo "5 Check File is symbolic file or not"
echo "6 Check File is empty or not"

echo "Please enter your option.."

read num

case "$num" in
	"1") sh checkFileisExistedOrNot-02.sh
	;;
	"2") sh checkFileReadPermissions.sh
	;;
	"3") sh checkFileWritePermissions.sh
	;;
	"4") sh checkFileExecutePermissions.sh
	;;
	"5") sh checkFileisSymbolicOrNot.sh
	;;
	"6") sh checkFileisEmptyOrNot.sh
	;;
	*) echo "Wrong choice"
	echo "Please select the correct number"
	exit 1
	;;
esac
