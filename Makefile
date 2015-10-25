README.md: aws-sg-revoker Makefile
	( echo '```'; sed -n '/^# NAME/,/^[^#]/p' aws-sg-revoker | sed -e 's/^[^#].*//' -e 's/^#//' ; echo '```') > README.md

