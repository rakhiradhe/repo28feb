#### Loptop
provider "azurerm" {
 subscription_id = "fca3d976-6a03-4c81-bcd1-f5cb81d8bd6c"
  client_id       = "c02ee1b9-0e90-40b9-be35-69e6aba4f9a8"
  client_secret   = "8c539572-28f6-4878-b4cf-c95b756a2a85"
  tenant_id       = "a103c87a-d974-45da-95db-1cf4f5380d21" 
}
resource "azurerm_resource_group" "HCL1RG326" {
  name     = "resource-55RG"
  location = "West Europe"
}

resource "azurerm_storage_account" "storage326" {
  name                     = "shyamstorage1226"
  resource_group_name      = "${azurerm_resource_group.HCL1RG326.name}"
  location                 = "${azurerm_resource_group.HCL1RG326.location}"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}


