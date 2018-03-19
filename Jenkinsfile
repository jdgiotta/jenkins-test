node {
    checkout scm
    

    stage('Test') {
        docker.image('golang:latest').inside() {
            sh 'go test ./...'
        }
    }
    stage('Build') {
        docker.build("mytest")
    }

    stage("Push") {
        docker.withRegistry('https://hub.docker.com', 'my-hub-creds') {
            docker.image('mytest').push("${env.BUILD_NUMBER}")
            docker.image('mytest').push('latest')
        }
    }

}
