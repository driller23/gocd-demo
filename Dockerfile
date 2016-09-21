<<<<<<< HEAD
FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080
CMD [ "npm", "start" ]
=======
# Set the base image to Ubuntu
FROM        ubuntu

# File Author / Maintainer
MAINTAINER Anand Mani Sankar

# Update the repository and install Redis Server
RUN         apt-get update && apt-get install -y redis-server

# Expose Redis port 6379
EXPOSE      6379

# Run Redis Server
ENTRYPOINT  ["/usr/bin/redis-server"]

>>>>>>> b55f2d972038180dddce672da18e88b005a85a98
