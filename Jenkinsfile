pipeline {
    agent any
    environment {
        AWS_DEFAULT_REGION = 'ap-south-1'
        S3_BUCKET = 'punit-terraform-state'
        DYNAMODB_TABLE = 'punit-terraform-lock'
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/DevopsPractice95/1stSample_devops_project.git'
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init -backend-config="bucket=$S3_BUCKET" -backend-config="dynamodb_table=$DYNAMODB_TABLE"'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
