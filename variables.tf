# Define variables
variable "resource_group_name" {
  description = "Name of the resource group"
  default     = "example-resource-group"
}

variable "location" {
  description = "Azure location"
  default     = "eastus"
}

variable "virtual_network_name" {
  description = "Name of the virtual network"
  default     = "example-vnet"
}

variable "virtual_network_cidr" {
  description = "CIDR block for the virtual network"
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "Name of the subnet"
  default     = "example-subnet"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  default     = "10.0.1.0/24"
}

variable "public_ip_name" {
  description = "Name of the public IP address"

default = "example-public-ip"
}

variable "network_interface_name" {
description = "Name of the network interface"
default = "example-nic"
}

variable "ip_configuration_name" {
description = "Name of the IP configuration"
default = "example-ip-config"
}

variable "virtual_machine_name" {
description = "Name of the virtual machine"
default = "example-vm"
}

variable "virtual_machine_size" {
description = "Size of the virtual machine"
default = "Standard_DS1_v2"
}

variable "os_disk_name" {
description = "Name of the OS disk"
default = "example-os-disk"
}

variable "publisher" {
description = "Publisher of the image"
default = "Canonical"
}

variable "offer" {
description = "Offer of the image"
default = "UbuntuServer"
}

variable "sku" {
description = "SKU of the image"
default = "18.04-LTS"
}

variable "version" {
description = "Version of the image"
default = "latest"
}

variable "admin_username" {
description = "Admin username"
default = "adminuser"
}

variable "admin_password" {
description = "Admin password"
default = "P@ssw0rd123"
}
