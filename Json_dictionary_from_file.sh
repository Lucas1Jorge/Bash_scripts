#!/bin/bash

cat text.txt | tr -s ' ' '\n' | sort | uniq -c | awk '{print "\"" $2 "\": \"" $1 "\""}'
