default: lint test

lint:
	pylint cicd

test:
	PYTHONDONTWRITEBYTECODE=1 pytest -v --color=yes