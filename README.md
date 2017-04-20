# COP4640-Project-2
Goal: To familiarize students with Linux Bash parameters, conditionals and loops.
Create a Bash script that implements a Windows Command Line interpreter. The script file should be named wcl.bash.
This script will implement the following Windows command line commands using the appropriate Bash command:
• dir – displays the list of files and directories in a directory. If no parameter, use current directory examples: dir directoryname or dir
(use bash command ls)
• copy – copy a file from source to destination example: copy sourcefile destinationfile (use bash command cp)
• del – removes a file example: del filename
(use bash command rm)
• move – moves a file to another file name and location: examples move xxx yyy or move xxx someplace/yyy
(use bash command mv)
• rename – renames a file example rename currentname newname
(use bash command mv)
• ipconfig – shows network information
(use bash command ifconfig)
• exit – exit the script
When started, the script should print:
Welcome to the Windows Command Line simulator!
Enter your commands below
wcl>
The text wcl> with a space is the command prompt. The user would then enter as may commands as they like in any order until they type exit or ^c.
If the user types an unrecognized command, respond with:
ERROR: Unrecognized command
If a valid command is entered but does not have the proper number of parameters, respond with:
Usage: put example here University of North Florida 1
COP 4640 Project 2
For example:
wcl> copy aaa
Usage: copy sourcefile destinationfile
wcl>
If the command is valid and has the right number of parameters, print the bash command being used and the results.
For example:
wcl> copy aaa bbb
using Bash command: cp aaa bbb
done
wcl>
If there is an issue, just let the Bash error message display
wcl> copy aaa bbb
using Bash command: cp aaa bbb
cp: cannot stat `aaa': No such file or directory
done
wcl>
1. Write a lab report that shows your bash script.
2. Include in the lab report, a capture of your session. Type the PWD command, cat the script, then run each wcl command in sequence and showing the results. Show error cases as well.
Use the man command to learn about the various bash commands and the help command in the windows command line to Learn about the windows commands.
You should submit the lab report as a MS word or PDF file. University of North Florida 2