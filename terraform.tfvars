resource_group_name      = "wl-group"
location                 = "West Europe"
vnet_name                = "wl-network"
vnet_address_prefix      = "10.0.0.0/16"
vnet_subnet_count        = 1
network_interfaces_count = 0
public_ip_adresses_count = 0
virtual_machine_count    = 0
network_security_group_rules = [
  {
    priority               = 300
    destination_port_range = "22"
  },
  {
    priority               = 310
    destination_port_range = "80"
  }
]
