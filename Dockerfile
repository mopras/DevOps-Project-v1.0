# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN npm install

# Expose port
EXPOSE 3000

# Run the app
CMD ["node", "app.js"]
FROM jenkins/jenkins:lts

# Skip setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Copy the Groovy script
COPY basic-security.groovy /usr/share/jenkins/ref/init.groovy.d/basic-security.groovy

