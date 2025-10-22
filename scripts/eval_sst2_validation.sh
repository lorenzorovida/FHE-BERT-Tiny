#!/bin/bash

input_file="sst2_validation.txt"
output_file="results.txt"

# Empty the output file if it exists
> "$output_file"

while IFS= read -r line; do
    # Run your program on each line and append the output to the results file
    ./Lol "$line" >> "$output_file"
done < "$input_file"