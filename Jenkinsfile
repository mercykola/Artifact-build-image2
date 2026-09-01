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
                git 'https://github.com/RayItern/Artifact-build-image.git'
            }
        }

        stage('Compile') {
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
            echo 'Build successful by Chuka and Smart Team!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
