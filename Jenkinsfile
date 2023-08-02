pipeline {
    agent {
    }
    stages {
        stage('Stage 1') {
            // Define the steps for this stage
            steps {
                // One or more build steps (commands) to execute
            }
        }
        stage('Stage 2') {
            steps {
                // Build steps for Stage 2
            }
        }
        // More stages can be defined here
    }
    post {
        // Define post-build actions or cleanup steps
        always {
            // Steps to be executed always, regardless of build status
        }
        success {
            // Steps to be executed only on successful build
        }
        failure {
            // Steps to be executed only on failed build
        }
        // More post conditions can be defined here
    }
}
