pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub')
        IMAGE_NAME = "karthikeyaapp"
        VERSION = "1"
        FULL_IMAGE_NAME = "%DOCKERHUB_CREDENTIALS_USR%/%IMAGE_NAME%:%VERSION%"
    }

    stages {
        stage('Build') {
            steps {
                bat 'docker build -t karthikapp:1.0 .'
            }
        }
        stage('Login') {
            steps {
                bat 'echo %DOCKERHUB_CREDENTIALS_PSW% | docker login -u %DOCKERHUB_CREDENTIALS_USR% --password-stdin'
            }
        }
        stage('Push') {
            steps {
                bat 'docker push %FULL_IMAGE_NAME%'
            }
        }
    }
    post {
        always {
            bat 'docker logout'
        }
    }
}
