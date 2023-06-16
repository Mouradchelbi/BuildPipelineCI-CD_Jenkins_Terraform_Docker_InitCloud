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
                                   
                                   azureuser:~$   /usr/local/bin/terraform

     
![image](https://github.com/Mouradchelbi/BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud/assets/72913289/7ea92582-5b71-4e5e-8406-460524ac591e)

     
![image](https://github.com/Mouradchelbi/BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud/assets/72913289/c7839b72-b100-4021-ae97-8dff6ad37881)


Jenkins is one of the most popular tools for build automation and it’s pipeline plugin allows us to define the job-configuration as part of our source code. Migrating from manual configuration to the groovy syntax of the pipeline plugin can be very challenging, but it’s definitely worth it. Tracking of changes, dynamic behavior, and complex configurations are just a few areas where the pipeline syntax of Jenkins thrives.

Jenkins downstream projects pipeline 
Triggered execution
Triggers follow the same logic as the “build after other projects are built” option in the configuration of Jenkins projects.

![image](https://github.com/Mouradchelbi/BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud/assets/72913289/8a2535b9-1385-46ef-8275-4b21eb05222f)

how to create a job that internally triggers another job in Jenkins. As a first step, we created a sample freestyle Jenkins job and then created a pipeline job to internally trigger 


![image](https://github.com/Mouradchelbi/BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud/assets/72913289/fa7732bf-08d9-486b-b9bc-bf1c8d557156)



Deployment Check 
![image](https://github.com/Mouradchelbi/BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud/assets/72913289/b04875f7-4d13-4155-9510-3c657eb77407)





