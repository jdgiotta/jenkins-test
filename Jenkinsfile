node {
    checkout scm
    

    stage('Test') {
        docker.image('golang:latest').inside() {
            sh 'go test ./...'
        }
    }
    stage('Build') {
        docker.build("jdgiotta/mytest")
    }

    stage("Push") {
        docker.withRegistry('https://hub.docker.com/r', 'my-hub-creds') {
            docker.image('jdgiotta/mytest').push("${env.BUILD_NUMBER}")
            docker.image('jdgiotta/mytest').push('latest')
        }
    }

}
