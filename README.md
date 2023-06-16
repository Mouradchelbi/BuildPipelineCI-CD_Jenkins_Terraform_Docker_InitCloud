# BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud


In this LAB we are going to :
     1- To Build an image and pushed to DockerHub (Ref: PythonApp folder)
     2- To Deploy an infra on staging enviroment using Terraform (Ref: stagingEnvironment)
     3- To configure Jenkins downstream projects pipeline to depoly the Prod enviroment (Ref: ProEnvironment)

ALL above orchireted by Jenkins!!!


Jenkins is one of the most popular tools for build automation and it’s pipeline plugin allows us to define the job-configuration as part of our source code. Migrating from manual configuration to the groovy syntax of the pipeline plugin can be very challenging, but it’s definitely worth it. Tracking of changes, dynamic behavior, and complex configurations are just a few areas where the pipeline syntax of Jenkins thrives.

Jenkins downstream projects pipeline 
Triggered execution
Triggers follow the same logic as the “build after other projects are built” option in the configuration of Jenkins projects.

![image](https://github.com/Mouradchelbi/BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud/assets/72913289/8a2535b9-1385-46ef-8275-4b21eb05222f)

how to create a job that internally triggers another job in Jenkins. As a first step, we created a sample freestyle Jenkins job and then created a pipeline job to internally trigger 


![image](https://github.com/Mouradchelbi/BuildPipelineCI-CD_Jenkins_Terraform_Docker_InitCloud/assets/72913289/fa7732bf-08d9-486b-b9bc-bf1c8d557156)





