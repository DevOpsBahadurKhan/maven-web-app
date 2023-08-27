pipeline {
    agent any

    tools {
        // Install the Maven version configured as "MAVEN" and add it to the path.
        maven "MAVEN"
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
        stage('Build') {
            steps {
                script {
                    def mavenHome = tool name: 'MAVEN', type: 'Maven'
                    def mavenCMD = "${mavenHome}/bin/mvn"
                    sh "${mavenCMD} clean package"
                }
            }
        }
    }
}


// pipeline {
//     agent any

//     tools {
//         // Install the Maven version configured as "M3" and add it to the path.
//         maven "MAVEN"
//     }

//     stages {
//         stage('Build') {
//             steps {
//                 // Get some code from a GitHub repository
//                 // git 'https://github.com/SwiftSoft-Bahadur/maven-web-app.git'
//                 echo "Hellow Build"    
//                 // Run Maven on a Unix agent.
//                 sh "mvn clean package"

//                 // To run Maven on a Windows agent, use
//                 // bat "mvn -Dmaven.test.failure.ignore=true clean package"
//             }
//         }
//     }
// }
