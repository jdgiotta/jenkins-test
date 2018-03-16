pipeline {
    agent {
        docker {
            image 'golang:latest'
            args '-v $PWD:/var/agent/workspaces'
        }
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
