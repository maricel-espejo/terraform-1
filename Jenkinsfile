pipeline {
   agent any
   environment {
      def AWS_REGION = "ap-southeast-2" // Region to create EC2 infrastructure in
      def AWS_ID = "aws-cred-id"
      def EXT_ID = "a12b3c"
      def AWS_ROLE = "arn:aws:iam::311824497502:role/TF-ROLE-EXTID" // AWS role used to create aws infra
      def ACCT ='311824497502'
   }
 stages {
    stage('Build') {
      steps {
         withAWS(region: AWS_REGION, role: AWS_ROLE, roleAccount: ACCT, externalId: EXT_ID) {
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

