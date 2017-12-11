CONDA_NAME := grpc-example
PYTHON_VERSION := 3.6

DOCKER_TAG := python-grpc-example

build-docker:
	docker build . -t $(DOCKER_TAG)

run-docker:
	docker run --rm -d -p 50051:50051 --name grpc-example $(DOCKER_TAG)

create-conda:
	conda env create -f environment.yml -n $(CONDA_NAME)

delete-conda:
	conda env remove -y -n $(CONDA_NAME)
