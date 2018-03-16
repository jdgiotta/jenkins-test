pipeline {
    agent {
        docker { image 'golang:latest' }
    }

    stages {
        stage('Test') {
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
