# BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud


In this LAB we are going to :
     1- To Build an image and pushed to DockerHub (Ref: PythonApp folder)
     2- To Deploy an infra on staging enviroment using Terraform (Ref: stagingEnvironment)
     3- To configure Jenkins downstream projects pipeline to depoly the Prod enviroment (Ref: ProEnvironment)

ALL above orchireted by Jenkins!!!

Pre-installation 

1- Instalation of Jenkins and configuration https://www.jenkins.io/doc/book/installing/linux/
2- Instalation of latest Python version 
3- Adding the following Plugins: 

     1- Azure CLI Plugin
     2- Azure Credential 
     3- Terraform Plugin 
     
4- Instalation of Terraform on Jenkins's machine and revoke the path on the plugin.


                                   azureuser:~$   which terraform 
                                   
                                   
 azureuser:~$  ->   /usr/local/bin/terraform

     
![image](https://github.com/Mouradchelbi/BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud/assets/72913289/7ea92582-5b71-4e5e-8406-460524ac591e)

     
  5- Setting up Docker hub credential in Jenkins 
  
https://www.jenkins.io/doc/book/using/using-credentials/

  6- Setting up Azure service principal.
                        
            az ad sp create-for-rbac --name azure-cli-vincent --role="Contributor" --scopes "/subscriptions/xxxxxxx-xxxxxx-xxxx-xxxx-xxxxxxxxxxxx"
                                
 https://plugins.jenkins.io/azure-credentials/


7- 
![image](https://github.com/Mouradchelbi/BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud/assets/72913289/48c32ebc-2a44-4b22-af87-6b51b4e9d5b2)





Jenkins is one of the most popular tools for build automation and it’s pipeline plugin allows us to define the job-configuration as part of our source code. Migrating from manual configuration to the groovy syntax of the pipeline plugin can be very challenging, but it’s definitely worth it. Tracking of changes, dynamic behavior, and complex configurations are just a few areas where the pipeline syntax of Jenkins thrives.

Creation of Jobs - Pipelines: 

Upstream   pipeline ->>> stagingEnvironment.

Downstream pipeline ->>> ProdEnvironment.

![image](https://github.com/Mouradchelbi/BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud/assets/72913289/765c1633-37ae-4a0a-bbb7-12cc71188a54)



Jenkins downstream projects pipeline 
Triggered execution
Triggers follow the same logic as the “build after other projects are built” option in the configuration of Jenkins projects.

![image](https://github.com/Mouradchelbi/BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud/assets/72913289/8a2535b9-1385-46ef-8275-4b21eb05222f)

how to create a job that internally triggers another job in Jenkins. As a first step, we created a sample freestyle Jenkins job and then created a pipeline job to internally trigger 

![image](https://github.com/Mouradchelbi/BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud/assets/72913289/e544e1c6-a20e-4fb2-9f5a-609284bbd51d)


![image](https://github.com/Mouradchelbi/BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud/assets/72913289/fa7732bf-08d9-486b-b9bc-bf1c8d557156)



Deployment Check 
![image](https://github.com/Mouradchelbi/BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud/assets/72913289/b04875f7-4d13-4155-9510-3c657eb77407)

![image](https://github.com/Mouradchelbi/BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud/assets/72913289/633bf643-3e11-46c7-8ba7-383ae6ad6fe0)

InitCloud provisioning check
ini-script 
![image](https://github.com/Mouradchelbi/BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud/assets/72913289/923fc1fb-4c82-4379-90df-e14192f654cf)

![image](https://github.com/Mouradchelbi/BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud/assets/72913289/76e5df8a-1186-4be0-9d64-f09f0cbc76d1)


I hope this Lab help you to progress in your Devops learning journey!!!




