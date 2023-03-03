pipeline {
    agent any

    tools {
        jdk "JDK"
        maven "Maven"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}