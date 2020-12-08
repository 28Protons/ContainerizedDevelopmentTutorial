# The Unruly Environment


Now that you've made some changes to the application you're starting to notice there are a lot of cumbersome commands to type. Have a look at that Docker command we are running? We don't want to have to run that every time we want to get to work. That can't be what they expect you to do.

You notice there is a docker-compose file in this directory.  Let's have a look at docker-compose.yml

You'll see two services defined here app and redis. Redis is a nosql data solution.  Notice the command line options for volume and port mappings have been converted over.

Let's spin up the docker-compose environment.

`docker-compose up`

Now we can list the running containers and you'll see that we now have the app and a redis instance running. It's that easy to add containerized services to your environment. There are images for just about anything want to run cobol on a container? If you don't have a particular image in your local repository docker will go looking for it for you.

Docker Compose automatically adds services to the default network and you can communicate between containers in the same network. To demonstrate this, let's jump on the app container.

`docker exec -it exercises_app_1 /bin/bash`

If you have another look at `docker-compose.yml`you'll see that there is a service called app and a service called db. The default hostname for the service is the service name. Let's prove it. Ping the DB container from the app container.  

`$> ping db`

when we are done we can spin everything in this environment down again

`docker-compose stop`

Now that we have an application instance and a database instace, we may want to add some more libraries to our application instance.

Make sure my-app-python-dev is running from the previous example.

`docker exec -it my-app-python-dev /bin/bash`
`python -m pip install pandas`

That may take a couple of minutes. But as pandas is installing you realize something. You'll have to install this library every time you rebuild the image if you do it this way. Fortunately this has an easy fix.

Have a look at Dockerfile.003 and notice there isn't much there. That is because we are now using cascading images to decrease the amount of time it takes to build an individual image. It also means that you can provide minimal base images across an organization for consistency, but individual development teams can still extend those images for their needs trivially.

`docker build --tag my-app-dev:0.3 --file examples/Dockerfile.003 .`


[Next: The Data Dilemma](004_the_data_dilemma.md)
