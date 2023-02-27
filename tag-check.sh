#!/bin/sh

if [ ! -f tag.txt ]
then
    echo "File does not exist in Bash"
    touch tag.txt
    while read -r line; do
    if [ $git_tag = "$line" ]; then
        echo "Found git_tag: $git_tag in test.txt"
        exit 1
    fi
    done < "tag.txt"
    echo $git_tag >> tag.txt
else
    echo "File found. Do something meaningful here"
    while read -r line; do
    if [ $git_tag = "$line" ]; then
        echo "Found git_tag: $git_tag in test.txt"
        exit 1
    fi
    done < "tag.txt"
    echo $git_tag >> tag.txt
fi
