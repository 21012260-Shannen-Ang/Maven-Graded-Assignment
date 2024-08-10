pipeline{
	agent any
	tools{
		
		maven 'maven 3.9.8'
		jdk 'OpenJdk11'
	
	}
	
	stages{
		stage("Clean"){
			steps{
				echo "Start Clean"
				bat "mvn clean"
				echo "Clean Complete"
			
			}
		
		}
		stage('Build and Test') {
            
            parallel {
            
                stage('Build') {
                
                    steps {
                        // Compile and package the application
                        echo "Start build"
                        bat "mvn install -DskipTests"
                        echo "Build Complete"
                    }
                }
                stage('Test') {
                    
                    parallel {
                        
                        stage('JUnit Tests') {
                            
                            steps {
                                // Run unit tests
                                echo "Performing JUnit Tests"
                                bat "mvn test"
                                echo "JUnit Tests Complete"
                            }
             
                        }
                        stage('Selenium Tests') {
                            steps {
                                // Run Selenium tests if applicable
                                echo "Performing Selenium Tests"
                                bat "mvn verify -Pselenium"
                                echo "Selenium Tests Complete"
                            }
                        }
                    }
                }
            }
        }
		
		stage("SonarQube Analysis"){
			steps{
				echo "Performing SonarQube Analysis"
				
				script {
                    // Trigger the Freestyle project for Sonarqube
                    build job: 'SonarQube-Analysis'
                }
			
				echo "SonarQube Analysis Complete"
			}
		
		}
		
		stage("Deployment"){
			steps{
				echo "Deploying to Tomcat"
				
				script {
                    // Trigger the Freestyle project for Sonarqube
                    build job: 'Apache-Tomcat-Deployment'
                }
                
                echo "Deploying to Tomcat Complete"
			}
		
		}
	
	}
}
