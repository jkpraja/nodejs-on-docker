FROM node:16

#Create app directory

WORKDIR /usr/src/app


#Install app dependencies
#A wildcard is used to ensure both package json and package-lock.json are copied
COPY package*.json ./

RUN npm install
#if you're building your code for production
#RUN npm ci --only=production

#Bundle app source
COPY . .

EXPOSE 3000
CMD [ "node", "app.js" ]
