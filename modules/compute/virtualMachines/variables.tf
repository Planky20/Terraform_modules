variable "resource_group_name" {
  type        = string
  description = "This defines the name of the resource group"
}

variable "location" {
  type        = string
  description = "This defines the location of the resource group and the resources"
}

variable "virtual_machine_count" {
  type        = number
  description = "This defines the number of virtual machines"
}

variable "virtual_network_interface_ids" {
  type        = list(string)
  description = "This will hold the virtual network interface ids"
}

variable "virtual_machines_public_ip_addresses" {
  type        = list(string)
  description = "This will hold the virtual machines public ip addresses"
}
