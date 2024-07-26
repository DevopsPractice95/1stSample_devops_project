pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/DevopsPractice95/1stSample_devops_project.git'
            }
        }

        stage('Build') {
            steps {
                // Your build steps here
                sh 'echo Building...'
            }
        }

        stage('Test') {
            steps {
                // Your test steps here
                sh 'echo Testing...'
            }
        }

        stage('Deploy') {
            steps {
                // Your deploy steps here
                sh 'echo Deploying...'
            }
        }
    }
}


