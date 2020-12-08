# New Hire Orientation

In this example we are going to do a quick overview of the environment we set up in this tutorial. We'll walk through the basic container paradigms and briefly touch on how to and why you would want to manage a local containerized development environment.

We should have docker running and some images already pre loaded in to the local image repository. This is where we begin.

## Have a look at your local image repository
`docker image ls`


Since an image is the basic unit of utility in a containerized software process, we'll start there. Have a look at the Dockerfile that sits in the exercises directory. The first line reads `FROM python`. The base image we are using is a light weight Debian distribution with python and the expected libraries installed already. This is the official image provided by Python's maintainers.

Let's build this image.

`docker build --tag my-app-dev:0.1 .`

And launch container using this image

`docker run --detach --publish 6000:6000 --name my-app-dev my-app-dev:0.1`

Now let's see if its running

`docker ps`

If all worked out you'll notice the app is running in a container. You can see some basic networking, status, and update detail.

Note the container id and let's have a look at the containers environment configuration.

`docker inspect <<container id>>`

Maybe you aren't convinced anything useful happened. Let's have a look at the container itself.

`docker exec -it my-app-dev /bin/bash`

We're now running an interactive shell on the container itself.
You should now be in a bash shell on the running container.
We started with the python docker image. Let's make sure we have the tools we need to use Python.

`which python`

 Let's see what's running here with `ps aux`

You should see the bash process and ps as well as a python process. Have another look at the Dockerfile and you'll see that on the last line I'm starting a python web server on port 6000. Any files in the working directory of the container will be served.

In the time it takes to download a container I can have a basic functional web development environment ready to go. This is true for just about any other type of development.

WE can poke around make sure that our python environment looks like what it should.

`which pip`

Or we can just play around with python.

`python`

But do we do now?  This is a development environment and we probably want to be able to make changes to the software we are developing. Let's go on to the next example.

[Next: Your First Day On the Job](002_your_first_day_on_the_job.md)
