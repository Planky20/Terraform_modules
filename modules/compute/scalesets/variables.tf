variable "resource_group_name" {
  type        = string
  description = "This defines the name of the resource group"
}

variable "location" {
  type        = string
  description = "This defines the location of the resource group and the resources"
}

variable "virtual_network_subnet_ids" {
  type        = list(string)
  description = "This defines the subnet ids of the subnets in the virtual network"
}

variable "virtual_machine_pool_id" {
  type        = string
  description = "This is the id of the backend pool attached to the Load Balancer"
}
