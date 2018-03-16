pipeline {
    agent {
        docker {
            image 'golang:latest'
        }
    }
    
    stages {
        stage('Test') {
            steps {
                    sh 'go version'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying... I hope...'
            }
        }
    }
}
