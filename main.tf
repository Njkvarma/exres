module "rg"{
    source = "./rg"
    rg_location = var.rg_location
    rg_name = var.rg_name
}

module "nsg"{
    source = "./nsg"
    nsg_name = var.nsg_name
    nsglocation = module.rg.rglocation
    nsg_rg = module.rg.rgname
}

module "vnet"{
    source = "./vnet"
    vnet_name = var.vnet_name
    rg_loc = module.rg.rglocation
    rg_name = module.rg.rgname
    vnet_address_space = var.vnet_address_space
    dns_servers = var.dns_servers
    subnet1_name = var.subnet1_name
    subnet2_name = var.subnet2_name
    subnet1_address = var.subnet1_address
    subnet2_address = var.subnet2_address
    sg_id = module.nsg.nsgid
    vnet_tag = var.vnet_tag
}
