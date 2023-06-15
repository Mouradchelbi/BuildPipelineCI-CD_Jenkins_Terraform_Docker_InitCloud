output "environment" {
  value = module.Prod.environment
 }

output "The_webserver_Public_ip" {
   value = module.Prod.The_webserver_Public_ip
}

output "private_ip_address" {
  value = module.Prod.The_websrever_Private_ip
  
}

output "Ressource_group_name" {
  value = module.Prod.Ressource_group_name
}


