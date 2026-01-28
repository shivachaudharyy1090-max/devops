pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Image') {
            steps {
                sh 'docker build -t demo-app:${BUILD_NUMBER} .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker rm -f demo-app || true
                docker run -d -p 8081:80 --name demo-app demo-app:${BUILD_NUMBER}
                '''
            }
        }
    }
}

