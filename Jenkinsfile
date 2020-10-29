pipeline {
   agent any
   environment {
      def AWS_REGION = "ap-southeast-2" 
      def AWS_ROLE = "arn:aws:iam::311824497502:role/tf-role"
      def ACCT ='586066885271'
   }
 stages {
    stage('Build') {
      steps {
         withAWS(region: 'ap-southeast-2' , roleAccount: ACCT, role: 'arn:aws:iam::311824497502:role/MESPEJO-ACCT-ROLE', duration: 900, roleSessionName: 'jenkins-session') {
         sh './deploy.sh'
         }
      }
    } 
    stage('Terraform Plan') { 
      steps {
        echo 'Done. Test'
      }
    }
 }
}

