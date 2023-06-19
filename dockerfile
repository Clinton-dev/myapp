FROM node:alpine

WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

RUN npm install

# Copy the built app files from the local 'dist' directory to the container
COPY . .

# Expose the port your Vite app is running on (if necessary)
ENV PORT=5173

EXPOSE 5173

# Start the app
CMD ["npm", "run", "dev"]
