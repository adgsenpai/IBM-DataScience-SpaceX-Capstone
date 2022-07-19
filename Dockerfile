#A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image.
# for more information on Docker Images 

# cool course from IBM if you like their method of explaination
# https://www.edx.org/course/introduction-to-containers-kubernetes-and-openshift

# docker free video lecture
# https://www.youtube.com/watch?v=3c-iBn73dDE

# docker resources
# https://docs.docker.com/get-started/

# our base image
FROM ubuntu:20.04

LABEL Maintainer="adgsenpai"

# Exposing network port on the internet
EXPOSE 3000

# Updating OS
RUN apt-get update

# 1. The COPY command copies the contents of the current directory to the root of the container.
# 2. The . . command is a placeholder for the current directory.
COPY . . 

# Installing Python
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y

# Installing our Python Requirements (Modules)
RUN pip3 install -r requirements.txt

#The CMD directive is used to specify the command that will be executed when the image is run.
CMD ["python3", "app.py"]