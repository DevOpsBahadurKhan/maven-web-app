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
                // def mavenHome = tool name: 'Maven', type: 'Tool'
                def mavenHome = tool name: 'Maven', type: 'Maven'
                def mavenCMD = "${mavenHome}/bin/mvn"
                sh "${mavenCMD} clean package"
                }
            }
        }
    }
}
