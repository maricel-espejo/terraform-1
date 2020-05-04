pipeline {
   agent any
   environment {
      def AWS_REGION = "ap-southeast-2" // Region to create EC2 infrastructure in
      def AWS_ID = "awscreddev"
      def AWS_ROLE = "arn:aws:iam::311824497502:role/tf-role" // AWS role used to create aws infra
   }
 stages {
    stage('Build') {
      steps {
         withAWS(region: AWS_REGION, role: AWS_ROLE, credentials: AWS_ID) {
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

