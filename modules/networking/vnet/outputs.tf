output "virtual_network_interfaces_ids" {
  value = azurerm_network_interface.network_interfaces[*].id # Use *, because network interfaces are deployed using count meta argument, and I want to fetch all NICs IDs
}

output "public_ip_addresses" {
  value = azurerm_public_ip.public_ipaddress[*].ip_address # The same, use *, because ip addresses are deployed using count meta arg, and I want to fetch each one of it
}

output "virtual_network_id" {
  value = azurerm_virtual_network.virtual_network.id
}

output "network_interface_private_ip_address" {
  value = azurerm_network_interface.network_interfaces[*].private_ip_address
}
