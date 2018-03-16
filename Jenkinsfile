pipeline {
    agent {
        docker { image 'golang:latest' }
    }
    ws("/var/agent/workspaces/trackingservice"){
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
}
