pipeline {  
     agent any
      
  environment {     
    DOCKERHUB_CREDENTIALS= credentials('dockerhubcredentials')  
    MY_CRED = credentials('Azureserviceprincipal')     
    }   
   
    stages    { 

    stage('check out the git') { 
        steps  {
             checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Mouradchelbi/BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud']])
     }
     }
    stage('Build') {
        steps{
            sh 'cd pythonApp  && docker build -t mouchel/app .'
            echo 'Build Image Completed' 
    }
    }
   	
    stage('Login') {

     steps {
     sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
     echo 'Login Completed' 
     }
     }
    
	                          
                                 
    stage('Push Image to Docker Hub') {         
     steps{                            
        sh 'docker push mouchel/app'         
        echo 'Push Image Completed'       
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
          dir('stagingEnvironment/') {
            sh 'terraform init -upgrade '
                }
                       
                 }
                 }
                 }
    
  
    stage('Terraform Apply') {
      steps {
        script {
          dir('stagingEnvironment/') {
            sh 'terraform apply  -auto-approve'
            }
            }
            }
            }
        
                                        
    
     stage('Pre_Building_Prod_Environment') {

       steps {
        build job: 'ProdEnvironment_Pipeline', waitForStart: true
              }
       stage('Post_Building_Prod_Environment')
       steps{
        echo 'Successful Deployment'
             }
    }
    
  }  //stages 
    }//pipeline
