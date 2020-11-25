FROM  python

  #create a working directory, other paths mapped to the container will be relative to This
  #to maintain base container indepdendence you should not use the root of the container
  #as your working directory
  WORKDIR /app

  #You can copy some stuff in to the container directly. Using a relative path will place this
  # relative to WORKDIR
  COPY . .

  # Expose port 4000 to the Docker host, so we can access it
  # from the outside.
  EXPOSE 4000

  # The main command to run when the container starts. Also
  CMD python -m http.server  4000
