pipeline {
    environment {
      registry = "auyong/firstrepo"
      registryCredential = 'dockerhub_id'
      dockerImage = ''
    }
    agent any
    stages {
      stage('Cloning Git') {
        steps {
            checkout([$class: 'GitSCM', branches: [[name: 'main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/auyong1995/testV3.git']]])
        }
      }
      stage('Building image') {
        steps{
          script {
            dockerImage = docker.build registry + ":$BUILD_NUMBER"
          }
        }
      }
      stage('Deploy Image') {
        steps{
           script {
              docker.withRegistry( '', registryCredential ) {
              dockerImage.push()
            }
          }
        }
      }

    }
  }