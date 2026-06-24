
rg-gola = {
  rg1 = {
    name = "rg-gola1"
    location = "centralindia"
  }
    rg2 = {
    name = "rg-gola2"
    location = "centralindia"
  }
   rg3 = {
    name = "rg-gola3"
    location = "eastus"
  }
}

vnets = {
  vnet1 = {
    name               = "goal_vnet1"
    location           = "centralindia"
    resource_group_key = "rg1"
    address_space      = ["10.0.0.0/16"]
  }

  vnet2 = {
    name               = "goal_vnet2"
    location           = "centralindia"
    resource_group_key = "rg2"
    address_space      = ["192.168.1.0/24"]
  }

  vnet3 = {
    name               = "goal_vnet3"
    location           = "eastus"
    resource_group_key = "rg3"
    address_space      = ["10.1.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    name                 = "frontend-subnet1"
    virtual_network_key = "vnet1"
    resource_group_key  = "rg1"
  }

  subnet2 = {
    name                 = "frontend-subnet2"
    virtual_network_key = "vnet2"
    resource_group_key  = "rg2"
  }

  bastion_subnet = {
    name                 = "AzureBastionSubnet"
    virtual_network_key = "vnet3"
    resource_group_key  = "rg3"
  }
}