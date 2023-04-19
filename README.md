#tf-sample-azure

This Terraform configuration creates a resource group, virtual network, subnet, public IP address, network interface, and a virtual machine in Azure. To use this configuration, you will need to have the Azure CLI installed and authenticated with your Azure subscription.

You can run the following Terraform commands to initialize the configuration, preview the changes, and apply the changes:

```terraform
Copy code```
terraform init
terraform plan
terraform apply
```

When you run terraform apply, Terraform will prompt you to confirm the changes before applying them to your Azure subscription. Once you confirm the changes, Terraform will create the resources in Azure and output the public IP address and login credentials for the virtual machine.