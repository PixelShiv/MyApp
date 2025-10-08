pipeline {
    agent any

    environment {
        MAVEN_HOME = tool 'maven'
        SONARQUBE_ENV = 'MySonar'
        SONAR_HOST_URL = 'http://ec2-54-90-74-217.compute-1.amazonaws.com:9000'  // Replace with your SonarQube URL
        SONAR_AUTH_TOKEN = credentials('sonar-token')  // Your SonarQube token stored in Jenkins credentials
        DEPLOY_USER = 'ec2-user'
        DEPLOY_HOST = 'ec2-18-234-234-52.compute-1.amazonaws.com'
        DEPLOY_PATH = '/opt/tomcat/webapps'
        WAR_NAME = 'ShivasApp.war'
    }

    options {
        timestamps()
        buildDiscarder(logRotator(numToKeepStr: '10'))
        disableConcurrentBuilds()
    }

    stages {

        stage('Clone Repository') {
            steps {
                echo '📥 Cloning repository...'
                git branch: 'main', url: 'https://github.com/PixelShiv/MyApp.git'
            }
        }

        stage('Build with Maven') {
            steps {
                echo '⚙️ Building the project...'
                sh "${MAVEN_HOME}/bin/mvn clean package -DskipTests"
            }
        }

        stage('SonarQube Analysis') {
            steps {
                echo '🔍 Running SonarQube analysis...'
                withSonarQubeEnv(SONARQUBE_ENV) {
                    sh """
                        ${MAVEN_HOME}/bin/mvn sonar:sonar \
                          -Dsonar.projectKey=shivas-project \
                          -Dsonar.projectName="Shivas Project" \
                          -Dsonar.host.url=${SONAR_HOST_URL} \
                          -Dsonar.java.binaries=target/classes
                    """
                }
            }
        }

        stage('Quality Gate') {
            steps {
                echo 'Skipping Quality Gate wait — using SonarQube Community Edition'
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                echo '🚀 Deploying WAR to Tomcat...'
                sshagent (credentials: ['ec2-key']) {
                    sh """
                        # Backup existing WAR if present
                        ssh ${DEPLOY_USER}@${DEPLOY_HOST} "if [ -f ${DEPLOY_PATH}/${WAR_NAME} ]; then mv ${DEPLOY_PATH}/${WAR_NAME} ${DEPLOY_PATH}/${WAR_NAME}.bak; fi"

                        # Copy new WAR file
                        scp target/*.war ${DEPLOY_USER}@${DEPLOY_HOST}:${DEPLOY_PATH}/${WAR_NAME}

                        # Restart Tomcat service
                        ssh ${DEPLOY_USER}@${DEPLOY_HOST} "sudo systemctl restart tomcat"
                    """
                }
            }
        }
    }

    post {
        success {
            echo '✅ Deployment successful!'
            echo "Access your app at: http://${DEPLOY_HOST}:8080/${WAR_NAME.replace('.war', '')}"
        }
        failure {
            echo '❌ Pipeline failed. Please check Jenkins logs for details.'
        }
    }
}
