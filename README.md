## seqrename
Rename a specific type of files to sequential numbers.

## download
`git clone https://github.com/AlShahawi/seqrename.git`

## install globally
This step is optional if you want this script to be globally available.
After clone the this repo run the following commands:
```
cd seqrename
cp seqrename.sh /usr/bin/seqrename
```

## Usage:
     seqrename [Extension [StartFrom [Padding [ PaddingChar ]]]]
     Arguments:
          Extension: The files extension you want to rename to sequential numbers default is null which will select all files and folders.
          StartFrom: The number of the first file default is 0.
          Padding: The padding prefix of the files. default is 4.
          PaddingChar: The char used with padding. Default is 0.
     Display help:
         seqnumber.sh --help

