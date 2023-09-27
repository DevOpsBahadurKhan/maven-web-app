def repo = 'https://github.com/SwiftSoft-Bahadur/maven-web-app.git'

// @Library("my-lib") _

pipeline {
    agent any
    
    tools {
        maven 'Maven-3.9.4'
    }
    
    stages{
        
    stage('Checkout') {
       steps{
        checkout(`${repo}`)
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
    
    stage('staticCodeAnalysis'){
        steps{
            staticCodeAnalysis()
        }
    }
  }
}
