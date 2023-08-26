pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                script {
                    // Checkout the 'main' branch from the specified GitHub repository
                    checkout([$class: 'GitSCM', 
                        branches: [[name: '*/main']],
                        userRemoteConfigs: [[url: 'https://github.com/SwiftSoft-Bahadur/maven-web-app.git']]
                    ])
                }
            }
        }
         stage('Unit testing') {
            steps {
                script {
                    // Make sure Maven is properly installed and configured
                    sh 'mvn test'
                }
            }
        }
    }
}
