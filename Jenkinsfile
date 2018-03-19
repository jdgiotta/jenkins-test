node {
    checkout scm
    

    stage('Test') {
        docker.image('golang:latest') {
            sh 'go test ./...'
        }
    }
    stage('Build') {
        docker.build("my-example")
    }

}
