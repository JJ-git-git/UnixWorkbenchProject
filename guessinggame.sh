function feedback {
	if [[ $1 -eq 1 ]]
	then
		echo "Congratulations! Your guess is correct!"
	elif [[ $1 -eq 2 ]]
	then
		echo "Your guess is too high!"
	else
		echo "Your guess is too low!"
	fi
}
file_number=$(ls -l | wc -l)
loop_flag=0
while [[ $loop_flag -eq 0 ]]
do
	echo "Type in a number and press enter:"
	read response
	if [[ $response -eq $file_number ]]
	then
		let loop_flag=1
		feedback 1
		exit
	elif [[ $response -gt $file_number ]]
	then
		feedback 2
	else
		feedback 3 
	fi
done
