pipeline {
    
    environment {
    registry = "auyong/firstrepo:1.0"
    registryCredential = 'dockerhub_id'
    dockerImage = ''
    }

    agent any

    stages {
        stage('checkout') {
            steps {
                echo 'Hello World v2'
                checkout([$class: 'GitSCM', branches: [[name: 'main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/auyong1995/testV3.git']]])
            }
        }
        stage('Building our image') {
            steps {
                script {
                    dockerImage = docker.build registry + ":1"
                }
            }
        }
        stage('Deploy our image') {
            steps {
                script {
                    docker.withRegistry( '', registryCredential ) {
                    dockerImage.push()
                }
            }
        }
    }

}
