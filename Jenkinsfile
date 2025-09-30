pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "greekshelp-site"
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/AnnaReddybandi/greekshelp.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t $DOCKER_IMAGE ."
            }
        }

        stage('Deploy Container') {
            steps {
                sh "docker stop greekshelp || true && docker rm greekshelp || true"
                sh "docker run -d -p 8080:80 --name greekshelp $DOCKER_IMAGE"
            }
        }
    }
}

