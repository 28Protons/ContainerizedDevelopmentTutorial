# The Unruly Environment


Now that you've made some changes to the application you're starting to get a little cocky. Have a look at that Docker command we are running? We don't want to have to run that every time we want to get to work. That can't be what they expect you to do.

You notice there is a docker-compose file in this directory.  Let's have a look at docker-compose.yml

You'll see two services defined here app and redis. Redis is a nosql data solution.  Notice the command line options for volume and port mappings have been converted over.

Let's spin up the docker-compose environment.

`docker-compose up`

Now we can list the running containers and you'll see that we now have the app and a redis instance running. It's that easy to add containerized services to your environment. There are images for just about anything want to run cobol on a container?

when we are done we can spin everything in this environment down again

`docker-compose stop`







----
Example:

-----
Example: Cascading images example HERE
* Split the image in to two, a base image with libraries and an image that applies the source code.
----

three image now python -> app-libs -> app-src
