#!/bin/bash
#
# Descr: count how often the article 'de' occurs on the Dutch Wikipedia page of the UG
#
# Usage: sh sample.sh

# Download the wikipedia page and store it in a variable for further usage
content=$(wget https://nl.wikipedia.org/wiki/Rijksuniversiteit_Groningen -q -O -)

# Load corpus, split the corpus by spaces and put every value on a new line, search for 'de', sort by frequency
echo $content | tr ' ' '\n' | grep -w 'de' | sort | uniq -c | sort -nr 
