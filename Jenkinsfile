pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "M3"
    }

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
                    def mavenHome = tool name: 'M3', type: 'Maven'
                    def mavenCMD = "${mavenHome}/bin/mvn"
                    sh "${mavenCMD} clean package"
                }
            }
        }
    }
}
