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
        /*docker.withRegistry('https://registry.hub.docker.com/', '6e7489e7-4ee3-426e-98da-eb4f2153a113') {
            docker.image('jdgiotta/mytest').push("${env.BUILD_NUMBER}")
            docker.image('jdgiotta/mytest').push('latest')
        }*/

        withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: '6e7489e7-4ee3-426e-98da-eb4f2153a113', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']]) {
            sh 'docker login -u "$USERNAME" -p "$PASSWORD"'
            docker.image('jdgiotta/mytest').push("${env.BUILD_NUMBER}")
            docker.image('jdgiotta/mytest').push('latest')
        }
    }

}
