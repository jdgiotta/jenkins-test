node {
    checkout scm
    

    stage('Test') {
        docker.image('golang:latest').inside() {
            sh 'go test ./...'
        }
    }
    stage('Build') {
        docker.build("my-example")
    }

}
