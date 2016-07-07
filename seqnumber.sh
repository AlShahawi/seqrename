#!/bin/bash

# Rename a specific type of files to sequential numbers.

ARG1=${1:-""} # The files extension or --help
ARG2=${2:-1} # The start number. default is 1
ARG3=${3:-4} # The padding. default is 4
ARG4=${4:-0} # The padding char. default is 0

# handle the short hand --help argument
if [ "$ARG1" = "-h" ]; then
    let ARG1="--help"
fi

if [ "$ARG1" = "--help" ]; then
    tabs="    "
    echo "Rename a specific type of files to sequential numbers."
    echo "Usage:"
    echo "$tabs seqnumber [Extension [StartFrom [Padding [ PaddingChar ]]]]"
    echo "$tabs Arguments:"
    echo "$tabs$tabs  Extension: The files extension you want to rename to sequential numbers default is null which will select all files and folders."
    echo "$tabs$tabs  StartFrom: The number of the first file default is 0."
    echo "$tabs$tabs  Padding: The padding prefix of the files. default is 4."
    echo "$tabs$tabs  PaddingChar: The char used with padding. Default is 0."
    echo "$tabs Display help:"
    echo "$tabs$tabs seqnumber.sh --help"
    exit
fi

# loop over the files
for file in $(echo -n "*$ARG1"); do
    # build the new name with this format: PaddingNumberExtension
    number=$(printf "%`echo -n "$ARG4$ARG3"`d$ARG1" "$ARG2")
    echo "rename $file with $number";
    mv -- "$file" "$number";
    let ARG2=ARG2+1
done
