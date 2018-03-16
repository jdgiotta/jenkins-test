pipeline {
    agent {
        docker { image 'golang:latest' }
    }
    
    stages {
        stage('Test') {
            steps {
                ws ('/var/agent/workspaces') {
                    sh 'go version'
                }
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying... I hope...'
            }
        }
    }
}
