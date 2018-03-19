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
        stage('Build') {
            steps {
                docker.build("my-example")
            }
        }
    }
}
