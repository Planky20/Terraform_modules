resource "azurerm_linux_virtual_machine" "appvm" {
  count                           = var.virtual_machine_count
  name                            = "webvm0${count.index + 1}"
  resource_group_name             = var.resource_group_name
  location                        = var.location
  size                            = "Standard_B1s"
  admin_username                  = "linuxadmin"
  admin_password                  = "VMpassword"
  disable_password_authentication = false
  custom_data                     = data.local_file.cloudinit.content_base64
  network_interface_ids = [
    var.virtual_network_interface_ids[count.index]
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

data "local_file" "cloudinit" {
  filename = "./modules/compute/virtualMachines/cloudinit"
}