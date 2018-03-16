pipeline {
    agent {
        docker { image 'golang:latest' }
    }
    
    stages {
        stage('Test') {
            steps {
                ws("/var/agent/workspaces/trackingservice"){
                    sh 'go test ./...'
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
