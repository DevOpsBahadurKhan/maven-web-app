@Library("my-lib") _
pipeline {
    agent any
    
    tools{
        maven 'Maven-3.9.4'
    }
    
    stages{
        
    stage('Checkout') {
       steps{
        // git branch: 'main', url: 'https://github.com/SwiftSoft-Bahadur/maven-web-app.git'
        sh 'git clone https://github.com/SwiftSoft-Bahadur/maven-web-app.git'
       }
    }
    
    stage('Maven Build') {
        steps{
            mavenBuild()
        }
    }
    
     stage('Unit Test'){
        steps{
            unitTest()
        }
    }
    
    // stage('staticCodeAnalysis'){
    //     steps{
    //         staticCodeAnalysis()
    //     }
    // }
  }
}
