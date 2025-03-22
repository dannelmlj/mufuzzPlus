#!/bin/bash

# Check if the number of files is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <number_of_files>"
    exit 1
fi

# Assign the argument to a variable
n=$1

# Loop to create n files
for i in $(seq 1 $n); do
    # Generate a 10-character random alphanumeric string
    random_string=$(tr -dc 'a-zA-Z0-9' < /dev/urandom | head -c 10)
    # Write the random string to a file named file$i
    echo "$random_string" > "file$i"
done
