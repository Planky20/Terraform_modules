module "resource-group" {
  source              = "./modules/general/resourcegroup"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "network" {
  source                       = "./modules/networking/vnet"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  vnet_name                    = var.vnet_name
  vnet_address_prefix          = var.vnet_address_prefix
  vnet_subnet_count            = var.vnet_subnet_count
  public_ip_adresses_count     = var.public_ip_adresses_count
  network_interfaces_count     = var.network_interfaces_count
  network_security_group_rules = var.network_security_group_rules
  depends_on                   = [module.resource-group]
}

module "machines" {
  source                               = "./modules/compute/virtualMachines"
  resource_group_name                  = var.resource_group_name
  location                             = var.location
  virtual_machine_count                = var.virtual_machine_count
  virtual_network_interface_ids        = module.network.virtual_network_interfaces_ids # Output value from vnet module
  virtual_machines_public_ip_addresses = module.network.public_ip_addresses            # Output value from vnet module
}

module "load-balancer" {
  source                               = "./modules/networking/loadbalancer"
  resource_group_name                  = var.resource_group_name
  location                             = var.location
  number_of_LB_backend_pool_machines   = var.virtual_machine_count
  virtual_network_id                   = module.network.virtual_network_id                   # Output value from vnet module
  network_interface_private_ip_address = module.network.network_interface_private_ip_address # Output value from vnet module
}
