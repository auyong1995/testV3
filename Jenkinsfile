pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                echo 'Hello World'
               git branch: 'main', poll: false, url: 'https://github.com/auyong1995/testV3.git'
            }
        }
        stage('Install') {
            steps {
                sh 'npm install'
            }
        }
    }

}
