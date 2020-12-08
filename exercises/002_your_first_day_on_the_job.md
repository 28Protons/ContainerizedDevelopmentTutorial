# Your first day on the job

A container provides a light weight membrane between the base operating system and it's own environment but this isolation is not strict. Container security is another topic entirely,  and there are lots of strategies emerging for dealing with weak isolation in production environments, but it turns out that for local development, the ability punch a hole in that membrane is quite nice.

Let's mount a local directory in to the container.

WINDOWS Note --volume //c/Users/...:/app or $(pwd)
`docker rm -f my-app-dev`

`docker run --detach --publish 5000:6000 --volume $(pwd)/app:/app --name my-app-dev my-app:0.1`

What we've done is mount the present working directory's './app' as a volume in to the working directory of the container. Now the container has our application source code available.

Open up your browser to http://localhost:5000

Let's make a change to the index.html in the app directory without touching the container itself. Because I'm super clever, I changed mine to "Hello Application with some changes"

Now refresh your browser, you've made your first change to the project. Great, you can serve static content! But you were hired to be a python programmer. Notice the file called webserver.py in your app directory. It's a simple webserver example.

Have a look at Dockerfile.001 and notice the updated Docker command. Lets build a new version of our development image, and tag it 0.2.

`docker build --tag my-app-dev:0.2 --file examples/Dockerfile.002 .`

And run the new image

`docker run  --detach --publish 7000:6000 --name my-app-python-dev --volume $(pwd)/app:/app  my-app-dev:0.2`
