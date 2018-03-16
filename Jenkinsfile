pipeline {
    agent {
        docker { image 'golang:latest' }
    }
    
    stages {
        ws("/var/agent/workspaces/trackingservice"){
            stage('Test') {
                steps {
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
