## How to use these examples

These exercises assume you have already ensured your system is up and running with access to Docker and Docker Compose. You can follow the main [README](../README.md) to ensure you have completed the appropriate pre-requisites.

## Exercises Included in this repository

### 001
[New Hire Orientation](./exercises/001_new_hire_orientation.md)

In this example we are going to do a quick overview of the environment we set up in this tutorial. We'll walk through the basic container paradigms and briefly touch on how to and why you would want to manage a local containerized development environment.

### 002
[Your First Day On the Job](./exercises/002_your_first_day_on_the_job)

It's your first day on the job, you are a new developer on an existing software product. We're going to get you set up to write some code and make commits on your first day.

### 003
[The Unruly Environment](./exercises/003_the_unruly_environment.md)

You think you have a handle on the basic development enviornment, but it doesn't feel like you are saving as much time as you could. There are a lot of commands to type. You also noticed you haven't set up a database yet for your application. Let's clean up this environment and demonstrate how to scale out your development to tackle enterprise solutions.  

### 004
[The Data Dilemma](./exercises/003_the_data_dilemma.md)

It turns out you had a really good first day and your CTO just showed up with a with a pet project. It turns out that she doesn't like that we are using Redis as a primary data store, NoSQL databases were all the rage a couple years ago, but it's time to use a "real" database. You're going to update the environment to add mysql so that a migration can occur. Let's talk about container networking, and how we can emulate complex distributed platforms with simple configuration files.

### 005
[The Un-operational Operating System](./exercises/003_the_unoperational_operating_system.md)

Now that you have added a new database to your development environment you've run in to some problems connecting to the new database from your application. After tracking the issue down to a library in your linux distribution you've decided it will be easier to swap out the entire operating system for something with better support. Let's talk about container and image portability and what that means for helping manage change in large software ecosystems.

## 006  
[The Big Red Button](./exercises/003_the_unruly_environment.md)

A lot of organizations are reducing what used to be complex deployments down to what amounts to a button push. You've moved mountains in your first week on the job and now we need to deploy to a staging environment. Let's talk about what software delivery looks like on containerized delivery platforms.
