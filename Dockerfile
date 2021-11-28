FROM node:16

# place where the source-code and automation target path is located, using the default place for the
# "node" images, which means home folder
WORKDIR /home/node

# copying all source-code to the workdir, only skiping the entries in the .dockerignore file
COPY . .

# running the installation steps, so node-modules are loaded and cached on the application directory
RUN npm install

# configuring the image to run with a unprivileged user, we don't need to create one because the
# "node" user is expected to exist already
USER node

# exposing the port where the application runs,
EXPOSE 8080

# using npm settings to run the application start comand
ENTRYPOINT ["npm", "run", "start"]
