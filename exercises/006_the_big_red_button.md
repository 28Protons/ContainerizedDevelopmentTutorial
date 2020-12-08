The Big Red Button

It's nice to be able to build out your applications locally. Eventually you are going to have to deploy your application somewhere else. The great thing about containerized develpment is that you can ensure the base images you create in development move through your delivery lifecycle to ensure consistency all the way through development, qa, staging and production.

And you can manage the differences in each environment with Dockerfiles. Let's create a Dockerfile that could be used to build images for a staging environment.
