README.md: aws-sg-revoker Makefile
	( 	echo '[//]: # This file is generated from aws-sg-revoker. all changes will be lost.' ; \
		echo '```';  \
		sed -n '/^# NAME/,/^[^#]/p' aws-sg-revoker | sed -e 's/^[^#].*//' -e 's/^#//' ;  \
		echo '```' \
	) > README.md



