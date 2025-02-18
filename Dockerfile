FROM node:14

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
#ADD  package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .
#ADD  . .

EXPOSE 3000
#HEALTHCHECK --interval=5s --timeout=3s 
HEALTHCHECK NONE
CMD [ "node", "index.js" ]
USER node
