pipeline {
    agent any
        tools {

        }
        stages {
           stage('Git Checkout') {
              steps {
                
              }
           }
           stage('Terraform init') {
              steps {
                 script {
                      sh 'terraform init'
                 }
              }
           }
           stage('Terraform plan') {
              steps {
                 script {
                     sh 'terraform plan'
                 }
              }
           }
           stage('Terraform apply') {
              steps {
                 script {
                    sh 'terraform apply'
                 }
              }
           }
      }
}