.PHONY: freeze test all

all:
	echo "nothing happens"

freeze:
	# workaround for Ubuntu's known issue
	# https://stackoverflow.com/questions/39577984/
	pip3 freeze | grep -v "pkg-resources" > requirements.txt

test:
	heroku local web
