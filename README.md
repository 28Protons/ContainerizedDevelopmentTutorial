# Containerized Development Workflows

This repository serves as a companion for an hour long live tutorial. Whether or not you follow along the session will be run as a live tutorial we aim to make the session informative and userul.

## Pre-Requisites for Live Session

Because this session is meant to given in a short time period. Doing the prep here will ensure the session goes smoothly. We will not be able to wait for downloads to complete over slow connections or troubleshoot errors. We will set time aside in the beginning and end of the session to discuss technical issues.

### Download this repository
Download or check out this Git repository. The tutorial should be run from the root of this repository and all commands will assume they are being run in or relative to this base folder.

# IDE and Editor requirements.
You can use any editor for this tutorial but we'll also be showing some tips and tricks for using Visual Studio Code, you may want to install that and use it for the session. But there will be plenty to do in your editor of choice.

### Install Docker
First ensure you've installed the appropriate Docker implementation for your platform. The docker for desktop installation can be found [here](https://docs.docker.com/desktop/)

#### Windows Caveates

If you are on windows you'll need to be on  Windows 10, version 2004 or higher (Build 19041 or higher).

##Ensure that you can run linux containers on Windows
If you are on Mac OS or Linux and have Docker installed you can skip this step.
There are several ways to run linux containers on Windows 10.

* If you are already running
windows subsystem for linux it's quite simple. [Install Docker on WSL](https://docs.docker.com/docker-for-windows/wsl/)

* If you aren't on a newer build of windows or can't use WSL2 you can also use
[Install Docker with Hyper-V](Containerhttps://docs.microsoft.com/en-us/virtualization/windowscontainers/quick-start/quick-start-windows-10-linux)

* If all else fails you can try using Linux Kit.
[Docker and Linux Kit](https://docs.microsoft.com/en-us/virtualization/windowscontainers/quick-start/quick-start-windows-10-linux)

## Install Docker Compose
If you've installed a recent version of Docker Desktop this step should not be necessary. You can verify by running `docker-compose help`
Install Docker compose
https://docs.docker.com/compose/install/


## Once Docker Desktop is installed

We can now kick the tires on the installation to ensure you can follow along during
the live session. Open up a terminal session that has access to the Docker CLI and navigate to the folder that contains this repository.
* Pull the base image we'll be using for the tutorial from Dockerhub
`docker pull python`
* From the directory that contains this README run the following command to build a docker cointainer image from the Dockerfile
`docker build --tag python-test-app .``
* Run a docker container from the image we built in the previous step. Docker will try to publish port  4000 on the container to your local port 4000 making the test app available at http://localhost:4000
`docker run --detach --publish 4000:4000 --name python-test-app python-test-image`

* read further about docker run if you run in to issues:
[Docker run reference](https://docs.docker.com/engine/reference/commandline/run/)

## Check the environment
* List all running docker containers. You should see a container bult from the image 'pyhton-test-image'
`docker ps`

* If you do not see a running container, it means there was an error starting the container. Troubleshoot by running `docker logs`

* If errors were encountered you may need to rebuild the base container image, but first you'll need to remove the current container with
`docker rm python-test-app`

## Test Docker compose

* You may wish to review [Docker Compose Reference](https://docs.docker.com/compose/compose-file/)
* Review docker-compose.yml in this repository. Note that it has the same information as the `docker run` command with but we have changed the local port to 5000
* run `docker-compose up` from the root of this repository
* Another version of


## Warming your environment for the Live Session
You will want to make sure you have a couple of docker images loaded locally  to ensure they are available during the session.
* `docker pull python`
* `docker pull redis`
* `docker pull mysql`

You can view available images using `docker image ls`

## Clean up
Once you have ensured your system is setup for the session you can clean up the running containers to free the local resources.
* Stop the running container
`docker stop python-test-app`

* Clean up after Docker Compose
`docker-compose rm`

* Remove the container
`docker stop pthon-test-app`

* Remove the image
`docker image rm python-test-image`
