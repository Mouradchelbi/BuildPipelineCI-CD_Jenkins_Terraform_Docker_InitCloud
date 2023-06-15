pipeline {
  agent any

   environment {     
    MY_CRED = credentials('Azureserviceprincipal')     
              }    

    
  stages{
        stage("Git Checkout") {
      steps {
        script {
          git branch: 'main', credentialsId: 'githubaccount', url: 'https://github.com/Mouradchelbi/nginx_customs_image_terraform.git'
        }
      }
    }


   stage('AZ conection') {
            steps {
               sh 'az login --service-principal -u $MY_CRED_CLIENT_ID -p $MY_CRED_CLIENT_SECRET -t $MY_CRED_TENANT_ID'
      }
    }
    
    stage("Parameter Setup") {
      steps {
        script {
        properties([
          parameters([
            choice(choices: ['apply', 'destroy'], name: 'ACTION')])])
        }
      }
    }
    
    stage('Terraform init') {
      steps {
        script {
          dir('ProdEnvironment/') {
            sh 'terraform init -upgrade '
                }
                        
                 }
                 }
                 }
    
  
    stage('Terraform Apply') {
      steps {
        script {
          dir('ProdEnvironment/') {
            sh 'terraform apply  -auto-approve'
        }
        
        }
        }
        }
   
  }
}
