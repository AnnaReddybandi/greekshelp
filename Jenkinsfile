pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "greekshelp-site"
        CONTAINER_NAME = "greekshelp"
    }



    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/AnnaReddybandi/greekshelp.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t $DOCKER_IMAGE ."
            }
        }

        stage('Deploy Container') {
            steps {
                sh """
                docker stop $CONTAINER_NAME || true
                docker rm $CONTAINER_NAME || true
                docker run -d -p 8080:80 --name $CONTAINER_NAME $DOCKER_IMAGE
                """
            }
        }
    }
}

