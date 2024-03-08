pipeline
{
    agent any    
    environment
    {
      SCANNER_HOME = tool 'sonar-scanner'
      PROJECT_NAME = 'Coupon-Website'
    }
    stages
    {
      stage('Git Checkout')
      {
         steps
         {
            git 'https://github.com/sureshkumar-devops/SpringBoot-WebApplication.git'
         }
      }
      stage('Code Compile')
      {
        steps
        {
          sh 'mvn compile'
        }
      }
      stage('Run Test Cases')
      {
        steps
        {
          sh "mvn test"
        }
      }
      stage('Build and Artifacts')
      {
        steps
        {
          sh 'mvn clean package'
        }
      }
      stage('SonarQube Static Code Analysis')
      {
        steps
        {
          script
          {
            withSonarQubeEnv('sonar-scanner')
            {
              sh "$SCANNER_HOME/bin/sonar-scanner\
                -Dsonar.projectName=Coupon-Website\
                -Dsonar.java.binaries=. \
                -Dsonar.projectKey=Coupon-Website"
            }
          }
        }
      }
    }
}
