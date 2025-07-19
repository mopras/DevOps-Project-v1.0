FROM jenkins/jenkins:lts

# Install plugins (optional)
# RUN jenkins-plugin-cli --plugins git workflow-aggregator docker-workflow

# Optional: Add a custom admin user script
COPY security.groovy /usr/share/jenkins/ref/init.groovy.d/security.groovy

