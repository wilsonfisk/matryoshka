#!/bin/bash
pre="eval '"; post="'"
text="command-to-hide"
echo -n "$pre$(echo -n 'echo $(base64 -w0 <<< '"$text"') | base64 -di' | od -A n -t x1 | \
	sed -e 's/[[:xdigit:]]\{2\}/\x&/g' -e 's/ //g' -e 's/\x/\\x/g' | tr -d '\n')$post" | \
	rev | tr '\!-~' 'P-~\!-O'
