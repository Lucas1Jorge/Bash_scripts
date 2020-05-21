#!/bin/sh

# test case
rm input.txt

echo 'hello, hello, my
beautiful, fellow, my
my, my, fellow, dear, beloved' >> input.txt

# execution
cat input.txt | tr -s ', ' '\n' | sort | uniq -c | sort -r | awk '{print "\"" $2 "\": \"" $1 "\""}'
