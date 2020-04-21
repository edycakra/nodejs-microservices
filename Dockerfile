FROM node:12.16.2

# App directory
WORKDIR /usr/src/app 

# Install app dependencies
COPY package*.json ./

# Command
RUN npm install 

# PRODUCTION CONTAINERS: npm ci --only=production

# COPY FROM THIS PROJECT DIRECTORY TO WORKDIR
COPY . .

# OPEN PORT
EXPOSE 3000

# APP RUN
CMD ["npm", "run", "dev"]

