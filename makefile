update: venv/bin/python
	venv/bin/python stack.py thelaunch.ninja
	aws s3 sync www/ s3://thelaunch.ninja --delete --acl public-read


venv/bin/python:
	virtualenv -p python3 venv
	venv/bin/pip install troposphere boto3 awscli
