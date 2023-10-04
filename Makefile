## The Makefile consists of some instructions on environment setup and lint tests
# Setup and then activate the virtual environment
# Establish dependencies for the requirements.txt file
# The Dockerfile configurations should pass with the hadolint
# The app.py should pass with the pylint

# setup related env
setup:
	# Create python virtualenv & source it
	# source ~/.devops/bin/activate
	python3 -m venv ~/.devops
	source ~/.devops/bin/activate

# install related configurations
install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	 sudo wget -O /bin/hadolint wget -O https://github.com/hadolint/hadolint/releases/download/v2.10.0/hadolint-Linux-x86_64 &&\
    	 sudo chmod +x /bin/hadolint	

#  Implement with lint and some other related configurations
lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203,W1202 app.py

# Then make some installations about lint test
all: install lint test
