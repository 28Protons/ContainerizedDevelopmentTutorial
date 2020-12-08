## 005 The Un-operational Operating System

You've had a very busy day. YOu've set up a development environment, made a change
to an application, found better ways to organize your project, and added a new database to your environment.

But the day couldn't go off without a hitch, that would be to easy. You ran in to a problem installing some libraries and you've decided it would be easier to try a different
linux distribution than to keep fighting with your current container image.

Let's have a look at Dockerfile.005. Notive we've swapped out the base image for an image tagged rc-alpine3.12 and we've changed the Dockerfile to say python:rc-alpine3.12. Alpine is a light weight operating system that is great for small footprint containers

`FROM python:rc-alpine3.12`

We can build the new Docketfile

`docker build --tag my-app-dev:0.5-alpine --file examples/Dockerfile.005 .`

Don't worry if you haven't already downloaded the alpine image, Docker will go get it for you.

Now we need to apply our cascading Dockerfile to the Mix. Notice the only thing we've changed from the previous example is the  FROM line, we are now applying the cascade to a new base image.
`
`docker build --tag my-app-dev:0.5-alpine --file examples/Dockerfile.005a .`

And we've swapped the entire linux distribution out from under our application.

[Next: The Big Red Button](006_the_big_red_button.md)
