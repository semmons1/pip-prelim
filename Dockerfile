# Because the pipeline for shiny app testing will likely require a docker-compose file to network all the neccessary containers,
# we need to start with this image, with the required pip tools already installed on a Alpine environment. We will also be 
# using docker in docker. Fun stuff

FROM docker:latest

MAINTAINER "Stefan Emmons" stefanemmons@gmail.com

# Go get binary libraries needed for pip tools, and subsequent docker-compose capabilities.
RUN apk add py-pip \
    && apk add python-dev libffi-dev openssl-dev gcc libc-dev make
   
RUN pip install docker-compose
