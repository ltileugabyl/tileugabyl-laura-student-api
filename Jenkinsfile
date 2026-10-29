pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t tileugabyl-laura-student-api:jenkins .'
            }
        }

        stage('Verify Image') {
            steps {
                sh 'docker image inspect tileugabyl-laura-student-api:jenkins'
            }
        }
    }

    post {
        success {
            echo 'Tileugabyl Laura: Pipeline completed successfully!'
        }
        failure {
            echo 'Tileugabyl Laura: Pipeline failed.'
        }
    }
}
