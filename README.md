[![CircleCI](https://dl.circleci.com/status-badge/img/gh/peninahnaserian/docker-kubernetes-microservice/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/peninahnaserian/docker-kubernetes-microservice/tree/main)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps
* Setup and Configure Docker locally
1. Create a [free docker account](https://hub.docker.com/signup), where you'll choose a unique username   and link your email to a docker account. Your username is your unique docker ID.
2. To install the latest version of docker, choose the Community Edition for your operating system, on [docker's installation site](https://docs.docker.com/get-docker/).
3. After installation, you can verify that you've successfully installed docker by printing its version in your terminal: `docker --version`

* Setup and Configure Kubernetes locally 
1. Install a virtual machine like VirtualBox:
    For Mac: `brew cask install virtualbox`
    For Windows: recommend to use a [Windows host](https://www.virtualbox.org/wiki/Downloads)
2. Install minikube :
    For Mac : `brew cask install minikube`
    For Windows: recommend using [Windows installer](https://minikube.sigs.k8s.io/docs/start/)
3. Run `minikube start`
4. Check if cluster is running `kubectl config view`

* Create Flask app in Container
Run the docker sript file: `./run_docker.sh`
Upload the built image: `./upload_docker.sh`

* Run via kubectl
Run the kubernetes script file: `./run_kubernetes.sh`

