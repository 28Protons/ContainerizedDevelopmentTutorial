# Your first day on the job

A container provides a light weight membrane between the base operating system and it's own environment but this isolation is not strict. Container security is another topic entirely,  and there are lots of strategies emerging for dealing with weak isolation in production environments, but it turns out that for local development, the ability punch a hole in that membrane is quite nice.

Let's mount a local directory in to the container.

WINDOWS Note --volume //c/Users/...:/app or $(pwd)

`docker run --detach --publish 5002:8080 --volume $(pwd)/app:/app --name my-app-002 my-app-base:0.1`

What we've done is mount the present working directory's './app' as a volume in to the working directory of the container. Now the container has our application source code available.

The following command will list the contents of the app directory on the container and you'll see they match the contents of your local app directory

`docker exec -it my-app-002 ls -la`

Now

Open up your browser to http://localhost:5002

Let's make a change to the index.html in the app directory without touching the container itself. Because I'm super clever, I changed mine to "Hello Application with some changes"

Now refresh your browser, you've made your first change to the project. Great, you can serve static content! But you were hired to be a python programmer. Notice the file called webserver.py in your app directory. It's a simple webserver example.

Have a look at Dockerfile.002 and notice the updated Docker command. Lets build a new version of our development image, and tag it 0.2.

`docker build --tag my-app-base:0.2 --file examples/Dockerfile.002 .`

And run the new image

`docker run  --detach --publish 50022:8080 --name my-app-002a --volume $(pwd)/app:/app  my-app-base:0.2`

[Next: The Unruly Environment](003_the_unruly_environment.md)
