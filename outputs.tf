# Define outputs
output "public_ip_address" {
  value = azurerm_public_ip.example.ip_address
}

output "virtual_machine_username" {
  value = azurerm_virtual_machine.example.os_profile[0].admin_username
}

output "virtual_machine_password" {
  value = azurerm_virtual_machine.example.os_profile[0].admin_password
}