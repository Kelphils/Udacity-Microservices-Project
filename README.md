

Project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test the project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested


## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`


* Setup Makefile. run "make" and run "make install"

* The steps in the makefile can found below as you can "cd" into the directory to see the commands

* Create and activate a virtual environment
* Install dependencies in requirements.txt and
* Dockerfile should pass hadolint
* app.py should pass pylint

# Setup and Configure Docker locally. 

* Install the most recent Docker Engine package on amazon linux 2. run "sudo amazon-linux-extras install docker"
* Start the Docker service. run "sudo service docker start"
* Add the ec2-user to the docker group so you can execute Docker commands without using sudo. run "sudo usermod -a -G docker ec2-user"
* Verify that the ec2-user can run Docker commands without sudo. run "docker info"
* To create a Docker image of a simple web application in yhe same directory. run "touch Dockerfile"


# Setup and Configure Kubernetes locally

* Download the latest release with the command. run "curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
* Validate the kubectl binary against the checksum file: run "echo "$(<kubectl.sha256) kubectl" | sha256sum --check" if valid, the output is: "kubectl: OK"
* Install kubectl. run "sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl"
* Test to ensure the version you installed is up-to-date: run "kubectl version --client"
* Next install minikube. run "curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64"
* And run "sudo install minikube-linux-amd64 /usr/local/bin/minikube" 

* Create Flask app in Container. run "docker build ."

* The steps in the Dockerfile can found below as you can "cd" into the directory to see the commands
  
*  Create the WORKDIR
* Copy source code to working directory
* Install packages from requirements.txt
*  hadolint ignore=DL3013
* Expose port 80
* Run app.py at container launch

OR

* Run "./run_docker.sh"  to automatically run the Dockerfile


* Run the "run_upload.sh" script to automatically upload to the dockerhub

* Run kubectl locally. run "minikube start"

# Then do the next step

* Run via kubectl. run "run_kubernetes.sh" to automatically create a prod name automatically

* The steps in the run_kubernetes.shell script can found below as you can "cd" into the directory to see the commands

* specify dockerpath=<>
* Run the Docker Hub container with kubernetes
* List kubernetes pods
* Forward the container port to a host


* The log output of different steps are saved in the specified .txt files as required and .circleci is also integrated to automatically lint the app and dockerfile also perform the required steps to complete the continuous integration.
