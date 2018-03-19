pipeline {
    agent none
    
    stages {
        stage('Test') {
            agent {
                docker {
                    image 'golang:latest'
                }
            }
            steps {
                    sh 'go test ./...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying... I hope...'
            }
        }
    }
}
