pipeline {
   agent any
   environment {
      def AWS_REGION = "ap-southeast-2" // Region to create EC2 infrastructure in
      def AWS_ID = "awscreddev"
      def AWS_ROLE = "arn:aws:iam::311824497502:role/tf-role" // AWS role used to create aws infra
      def ACCT ='311824497502'
   }
 stages {
    stage('Build') {
      steps {
         withAWS(region: AWS_REGION, role:AWS_ROLE, roleAccount: ACCT, duration: 900, roleSessionName: 'jenkins-session') {
         sh './deploy.sh'
         }
      }
    } 
    stage('Terraform Plan') { 
      steps {
        echo 'Done.'
      }
    }
 }
}

