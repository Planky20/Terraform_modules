output "virtual_network_interfaces_ids" {
  value = azurerm_network_interface.network_interfaces[*].id # Use *, because network interfaces are deployed using count meta argument, and I want to fetch all NICs IDs
}
