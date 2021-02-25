Project Status: [![peteh-automation](https://circleci.com/gh/peteh-automation/DevOps_Microservices.svg?style=svg)](https://circleci.com/gh/peteh-automation/DevOps_Microservices)

## Project Overview

This application contains a model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project contains a Python flask app: `app.py` that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

The project operationalizes a working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. 

* The project tests the code using linting
* Contains a file 'Dockerfile' that has the instructions to containerize this application
* The container can be run in Docker to make a prediction
* The container can also be run in a Kubernetes cluster to make a prediction

---

## Setup the Environment

* Clone git repo: peteh-automation/DevOps_Microservices
* cd project-ml-microservice-kubernetes
* Run `make setup` (to create a virtual environment)
* Run `make install` (to install the necessary dependencies)

### Running `app.py`

1. Standalone: run `python app.py`
2. Run in Docker: With Docker Destop running, run `./run_docker.sh` (use ./upload_docker.sh to upload the image to Docker Hub)
3. Run in Kubernetes: With Docker Desktop running and Minikube started, run `./run_kubernetes.sh`

### Make a prediction

In each case above, run `./make_prediction` in a separate terminal window

