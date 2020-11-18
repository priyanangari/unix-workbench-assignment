#!/usr/bin/env bash
function check_filescount {
	read user_input
	if [[ $user_input -eq $files_count ]]
	then
		echo "Congratulations, Your guess is correct"
		echo "List of files:"
		for file_name in $(ls)
		do
			echo "File Name: $file_name"
		done
	else
		if [[ $user_input -lt $files_count ]]
		then
			echo "There is more number of files. try again and press Enter:"
			check_filescount
		else
			echo "There is less number of files. try again and press Enter:"
			check_filescount
		fi
	fi
}

files_count=$(ls | wc -l)

echo "Welcome to Unix Workbench"
echo "Guess how many files are present in the current directory and press enter:"
check_filescount
