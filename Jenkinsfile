pipeline{

	agent any
	
	tools{
		
		maven 'maven 3.9.8'
        jdk 'OpenJdk11'
	
	}
	
	stages{
	
		stage('Clean'){
		
			steps{
			
				echo "Start Clean..."
				bat "mvn clean"
				echo "Clean Complete"
			
			}
		
		}
	
		stage('Build'){
		
			steps{
			
				echo "Start Build..."
				bat "mvn install -DskipTests"
				echo "Build Complete"
			}
		}

		stage('JUnit Tests'){
					
			steps{
						
				echo "Performing JUnit Tests..."
				bat "mvn test"
				echo "JUnit Tests Complete"
			}
					
		}
				
		stage("SonarQube Analysis"){
				
			steps{
					
				echo "Performing SonarQube Analysis..."
				bat "mvn sonar:sonar -Dsonar.exclusions=**/RegisterServlet.java"
				echo "SonarQube Analysis Complete"
						
			}
		}
				

		stage("Deployment"){
		
			steps{
			
				echo "Deploying Website to Tomcat Server..."
				
				script{
						
					// Trigger the project for Tomcat deployment
                    build job: 'Apache-Tomcat-Deployment', wait: true
				}
					
				echo "Deploying Website to Tomcat Server Complete"		
			}
		}
		
		stage("Selenium Test"){
		
			steps{
			
				echo "Performing Selenium Test..."
				
				script{
						
					// Trigger the project for Tomcat deployment
                    build job: 'Selenium-Test'
				}
					
				echo "Selenium Test Complete"		
			}
		}
	
	}

}