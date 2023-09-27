@Library("my-lib") _



pipeline {
    agent any
    
    tools {
        maven 'Maven-3.9.4'
    }
    
    environment {
        repo ='https://github.com/SwiftSoft-Bahadur/maven-web-app.git'
    }

    stages{
        
    stage('Checkout') {
       steps{
        checkout(env.repo)
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
