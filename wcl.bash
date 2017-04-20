##!/bin/bash
exitNow=true
printf "%0.s*" {1..50}
echo ""
echo "* Welcome to the Windows Command Line Simulator! *"
echo "*          Enter your commands below             *"
printf "%0.s*" {1..50}
echo ""
while [ exitNow ]
do
read -p "wcl> " command1 command2 command3
case $command1 in
"dir")
	echo "using Bash command: ls $command2"
	ls -l $command2
	echo "done";;
"copy")
	if [[ "$command2" == "" ||  "$command3" == "" ]] 
		then echo "usage: copy sourcefile destinationfile"
	else
		echo "using Bash command: cp $command2 $command3"
		cp $command2 $command3
		echo "done"
	fi;;
"del")
	if [ -z "$command2" ]
	then 
		echo "usage: del sourcefile"
	else
	echo "using Bash command: rm $command2"
	rm $command2
	echo "done"
	fi;;
"move")
	if [[ "$command2" == "" ||  "$command3" == "" ]] 
		then echo "usage: move sourcefile destination"
	else
		echo "using Bash command: mv $command2 $command3"
		mv $command2 $command3
		echo "done"
	fi;;
"rename")
	if [[ "$command2" == "" ||  "$command3" == "" ]] 
		then echo "usage: rename sourcefile newfilename"
	else
		echo "using Bash command: mv $command2 $command3"
		mv $command2 $command3
		echo "done"
	fi;;
"ipconfig")
	echo "using Bash command: ifconfig"
	ifconfig
	echo "done";;
"help")
	format=" %10s %-30s %-20s\n"
	printf "$format" "dir:" "list directory contents:" "dir [FILE]..."
	printf "$format" "copy:" "copy files and directories:" "copy SOURCE... DIRECTORY"
	printf "$format" "del:" "remove files or directories:" "del FILE... "
	printf "$format" "move:" "move files:" "move SOURCE... DIRECTORY"
	printf "$format" "rename:" "rename files:" "rename SOURCE... DIRECTORY"
	printf "$format" "ipconfig:" "configure a network interface:" "ipconfig"
	printf "$format" "exit:" "ends application:" "exit";;
"exit")
	exitNow=false
	echo "Exiting program"
	exit 0;;
	*)
	echo "ERROR: Unrecognized command "
esac
done