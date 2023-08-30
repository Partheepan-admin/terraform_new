pipeline {
    agent any
        environment {
            TF_LOG = "TRACE"
        }
        stages {
           stage('Checkout') {
              steps {
                checkout scm
              }
           }
           
           stage ('terraform init') {
              steps {
                 script {
                      sh 'terraform init'
                 }
              }
           }

           stage ('terraform plan') {
              steps {
                 script {
                     sh 'terraform plan'
                 }
              }
           }
           
           stage ('terraform apply') {
              steps {
                 script {
                    sh 'terraform apply'
                 }
              }
           }
      }
}