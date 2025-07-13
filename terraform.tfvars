resource_group_name      = "wl-group"
location                 = "West Europe"
vnet_name                = "wl-network"
vnet_address_prefix      = "10.0.0.0/16"
vnet_subnet_count        = 2
network_interfaces_count = 2
public_ip_adresses_count = 2
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
