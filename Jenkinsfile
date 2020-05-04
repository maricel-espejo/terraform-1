pipeline {
   agent any
   environment {
      def AWS_REGION = "ap-southeast-2" // Region to create EC2 infrastructure in
      def AWS_ID = "aws-cred-id"
      def EXT_ID = "a12b3c"
      def AWS_ROLE = "arn:aws:iam::311824497502:role/tf-role" // AWS role used to create aws infra
      def ACCT ='311824497502'
   }
 stages {
    stage('Build') {
      steps {
         withAWS(region: 'ap-southeast-2' , role: 'arn:aws:iam::311824497502:role/tf-role', duration: 900, roleSessionName: 'jenkins-session') {
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

