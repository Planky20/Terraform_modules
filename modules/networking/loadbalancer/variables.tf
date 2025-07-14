variable "resource_group_name" {
  type        = string
  description = "This defines the name of the resource group"
}

variable "location" {
  type        = string
  description = "This defines the location of the resources"
}

variable "number_of_LB_backend_pool_machines" {
  type        = number
  description = "These are the number of machines in the LB backend pool"
}

variable "virtual_network_id" {
  type        = string
  description = "This defines the resource id of the VNET"
}

variable "network_interface_private_ip_address" {
  type        = list(string)
  description = "This is the private IP addresses of the NICs attached to each VM"
}
