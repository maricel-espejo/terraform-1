pipeline {
   agent any

 stages {
    stage('Terraform init') { 
      steps {
        sh 'terraform init'
      }
    }
    stage('Terraform Plan') { 
      steps {
        sh './deploy.sh'
      }
    }
 }
}

