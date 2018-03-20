node {
    checkout scm

    stage('Test') {
        docker.image('golang:latest').inside() {
            sh 'go test ./...'
        }
    }
    stage('Build') {
        def img = docker.build("jdgiotta/mytest")
    }

    stage("Push") {
        docker.withRegistry('https://registry.hub.docker.com/', '6e7489e7-4ee3-426e-98da-eb4f2153a113') {
            img.push("${env.BUILD_NUMBER}")
            img.push('latest')
        }
    }

}
