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
            docker.build("my-example")
        }
    }
}
