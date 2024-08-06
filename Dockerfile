FROM node:20

WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application's source code
COPY . .

# Build the frontend
RUN npm run build

EXPOSE 3000

# Start the application
CMD ["npm", "run", "start"]