deps:

	pip install -r requirements.txt; \

	pip install -r test_requirements.txt	

lint:

	flake8 hello_world test

.PHONY: test

test:

	PYTHONPATH=. py.test --verbose -s

run:

	python main.py
	
docker_build:
	docker build -t hello-world-printer .
	
dockre_run: docker_build
			dockre_run
			--name hello-world-printer
			-p 500