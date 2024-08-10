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
	            bat "mvn install"
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
       
        
    }
}
