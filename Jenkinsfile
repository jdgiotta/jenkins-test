node {
    checkout scm

    String goPath = '/go/src/github.com/jdgiotta/jenkins-test'

    stage('Test') {
        docker.image('golang:latest').inside() {
            sh "ls -l && pwd"

        }
    }
    stage('Build') {
        docker.build("jdgiotta/mytest")
    }

    stage("Push") {
        withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: '6e7489e7-4ee3-426e-98da-eb4f2153a113', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']]) {
            sh 'docker login -u "$USERNAME" -p "$PASSWORD"'
            docker.image('jdgiotta/mytest').push("${env.BUILD_NUMBER}")
            docker.image('jdgiotta/mytest').push('latest')
        }
    }

}
