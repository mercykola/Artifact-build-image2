pipeline {
    agent any

    tools {
        jdk 'myjava'
        maven 'mymaven'
    }

    stages {

        stage('Checkout') {
            steps {
                echo 'Cloning repository...'
                git 'https://github.com/mercykola/Artifact-build-image2.git'
            }
        }

        stage('Compile with maven') {
            steps {
                echo 'Compiling code...'
                sh 'mvn clean compile'
            }
        }

        stage('Code Review') {
            steps {
                echo 'Running PMD analysis...'
                sh 'mvn pmd:pmd'
            }
        }

        stage('Package') {
            steps {
                echo 'Packaging application...'
                sh 'mvn package'
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed.'
        }
        success {
            echo 'Build successful by Mercy and Moyin!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
