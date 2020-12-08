# The Data Dilemma

It turns out you had a really good first day or two and your CTO just showed up with a with a pet project. It turns out that she doesn't like that we are using Redis as a primary data store, NoSQL databases were all the rage a couple years ago, but it's time to use a "real" database. You're going to update the environment to add mysql so that a migration can occur. Let's talk about container networking, and how we can emulate complex distributed platforms with simple configuration files.


Let's open up docker-compose and add a mysql service

``yaml
mysql:
  image: mysql
  command: --default-authentication-plugin=mysql_native_password
  restart: always
  environment:
    MYSQL_ROOT_PASSWORD: soopersekret
``

Notice we are passing in an environment variable, and a restart flag. The restart option is here for discussion, normally you would use it in  a production environment. Let's change that to  "no" and lets start the

`docker-compose up db2`

or if the environment is not already running you can just start normally

`docker-compose up`

And let's ensure the mysql host is available via service name. Notice we're also now using the docker-compose version of exec and running  the ping command directly

`docker-compose exec app ping mysql`

We have a new database in the environment in minutes. Let's have a look at the full environment.

`docker stats`

Docker stats gives us a view of the resource utilization of our container environment.

[Next: The Un-operational Operating System](005_the_unoperational_operating_system.md)
