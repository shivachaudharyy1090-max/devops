
pipeline {
    agent any

    environment {
        IMAGE_NAME = "demo-app"
        IMAGE_TAG  = "${BUILD_NUMBER}"
        CONTAINER  = "demo-app-${BUILD_NUMBER}"
    }

    stages {

        stage('Checkout') {
            steps {
                echo "Checking out source code"
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker image"
                sh '''
                  docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .
                '''
            }
        }

        stage('Run Container') {
            steps {
                echo "Running Docker container"
                sh '''
                  docker rm -f demo-app || true
                  docker run -d \
                    -p 8081:80 \
                    --name demo-app \
                    ${IMAGE_NAME}:${IMAGE_TAG}
                '''
            }
        }
    }
<<<<<<< HEAD
=======

    post {
        always {
            echo "Pipeline finished for build ${BUILD_NUMBER}"
        }
        failure {
            echo "Pipeline failed"
        }
    }
}
>>>>>>> c60ca25 (Add basic Jenkins pipeline)

    post {
        always {
            echo "Pipeline finished for build ${BUILD_NUMBER}"
        }
        failure {
            echo "Pipeline failed"
        }
    }
}
