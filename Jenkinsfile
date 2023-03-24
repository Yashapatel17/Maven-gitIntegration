pipeline {
    agent any

    tools {
        jdk "JDK"
        maven "Maven"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Yashapatel17/Maven-gitIntegration.git']])
            }
        }

        stage('Build Maven') {
            steps {
                sh 'mvn clean install'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t yashpatel17/devops-integration .'
                }
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
                    sh 'docker login -u yashpatel17 -p ${dockerhubpwd}'
                }
            }
        }

        stage('Docker Push') {
            steps {
                sh 'docker push yashpatel17/devops-integration'
            }
        }
    }
}
