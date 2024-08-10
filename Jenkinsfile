pipeline {
    agent any
    tools {
        maven 'maven 3.9.8'
        jdk 'OpenJdk11'
    }
    
    stages {
        stage('Clean') {
            steps {
                echo "Start Clean"
                bat "mvn clean"
                echo "Clean Complete"
            }
        }
        stage('Build') {
            steps {
	            echo "Start build"
	            bat "mvn install -DskipTests"
	            echo "Build Complete"
            }
        }
                
        stage('Tests') {

            steps {
	            echo "Performing JUnit Tests"
	            bat "mvn test"
	            echo "JUnit Tests Complete"            
            }    
 	
        }
       
        stage('SonarQube Analysis') {
            steps {
                echo "Performing SonarQube Analysis"
                script {
                    // Trigger the Freestyle project for Sonarqube
                    build job: 'SonarQube-Analysis'
                }
                echo "SonarQube Analysis Complete"
            }
        }
        stage('Deployment') {
            steps {
                echo "Deploying to Tomcat"
                script {
                    // Trigger the Freestyle project for Tomcat deployment
                    build job: 'Apache-Tomcat-Deployment'
                }
                echo "Deployment to Tomcat Complete"
            }
        }
    }
}
