# Define provider
provider "azurerm" {
  features {}
}

# Create resource group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

# Create virtual network
resource "azurerm_virtual_network" "example" {
  name                = var.virtual_network_name
  address_space       = ["${var.virtual_network_cidr}"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

# Create subnet
resource "azurerm_subnet" "example" {
  name                 = var.subnet_name
  address_prefixes     = ["${var.subnet_cidr}"]
  virtual_network_name = azurerm_virtual_network.example.name
  resource_group_name  = azurerm_resource_group.example.name
}

# Create public IP address
resource "azurerm_public_ip" "example" {
  name                = var.public_ip_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  allocation_method   = "Static"
}

# Create network interface
resource "azurerm_network_interface" "example" {
  name                = var.network_interface_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = var.ip_configuration_name
    subnet_id                     = azurerm_subnet.example.id
    public_ip_address_id          = azurerm_public_ip.example.id
    private_ip_address_allocation = "Dynamic"
  }
}

# Create virtual machine
resource "azurerm_virtual_machine" "example" {
  name                  = var.virtual_machine_name
  location              = azurerm_resource_group.example.location
  resource_group_name   = azurerm_resource_group.example.name
  network_interface_ids = [azurerm_network_interface.example.id]
  vm_size               = var.virtual_machine_size

  storage_os_disk {
    name              = var.os_disk_name
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  storage_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.version
  }

  os_profile {
    computer_name  = var.virtual_machine_name
    admin_username = var.admin_username
    admin_password = var.admin_password
  }
}