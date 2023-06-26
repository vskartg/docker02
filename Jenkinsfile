pipeline {
    agent any
    stages {
        // stage('Clone') {
        //     steps {
        //        sh 'git clone https://github.com/adevops01/docker02.git'
        //     }
        // }

        // stage('Build') {
        //     steps {
        //         sh 'cd docker02 && npm install'
        //     }
        // }

        stage('Docker image Build') {
            steps {
                sh 'docker build -t myapp:2.0 .'
            }
        }
    }
}
