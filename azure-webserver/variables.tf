variable "subscription_id" {
   description = "Azure subscription"
   default = "393e3de3-0900-4b72-8f1b-fb3b1d6b97f1"
}

#variable "client_id" {
    #description = "Azure Client ID"
    #default = "99208659-9294-464c-afa1-70db52148203"
#}

#variable "client_secret" {
    #description = "Azure Client Secret"
    #default = "3bh8Q~U05J0MOm3k.MOdhJEpf7TVp6iqApQpIbpS"
#}


 variable "tenant_id" {
   description = "Azure Tenant ID"
    default = "7349d3b2-951f-41be-877e-d8ccd9f3e73c"
 }


variable "instance_size" {
   type = string
   description = "Azure instance size"
   default = "Standard_F2"
}

variable "location" {
   type = string
   description = "Region"
   default = "Francecentral"
}

variable "environment" {
   type = string
   description = "Environment"
   default = "dev"
}
variable "Resource_Group_name" {
   type = string
   default = "the Resource Group of deployment"
  
}
