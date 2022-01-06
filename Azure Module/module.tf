module "network" {
  source  = "Azure/network/azurerm"
  version = "3.5.0"
  # insert the 1 required variable here
  resource_group_name = azurerm_resource_group.example.name
  address_spaces      = ["10.0.0.0/16", "10.2.0.0/16"]
  subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  subnet_names        = ["subnet1", "subnet2", "subnet3"]

  subnet_service_endpoints = {
    "subnet1" : ["Microsoft.Sql","Microsoft.Storage"],
    "subnet2" : ["Microsoft.Sql","Microsoft.Storage"],
    "subnet3" : ["Microsoft.Sql","Microsoft.Storage"]
  }

  tags = {
    environment = "dev"
    costcenter  = "it"
  }

  depends_on = [azurerm_resource_group.example]
}

resource "azurerm_resource_group" "example" {
  name     = "my-module"
  location = "West Europe"
}

