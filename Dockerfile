#Tells which Docker context to use as a template. 
#for webaps Node.js and specific linux version
FROM node:lts-alpine

RUN npm install -g http-server

# specify tp which forlder in the image our code is to be copied. 
# Needed when you want to do something with the files in the image
WORKDIR /app

# this will copy my file system to the image file system
COPY package*.json ./

# run a command in the image, e.g npm run build
RUN npm install

# copy project files and folder to the current working dir
COPY . .


#connects the port of teh app and the image
EXPOSE 8080

#starts webserver: http-server dist
# specifies the command to run when typing docker run
CMD ["npm", "run", "build"]

#Now we have a CONTAINER
