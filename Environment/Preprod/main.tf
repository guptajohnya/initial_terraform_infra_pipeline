module "Resource_Group" {
  source = "../../Module/Resource_Group"
  rgs = var.rgs
}

module "Storage_Account" {
    depends_on = [ module.Resource_Group ]
source = "../../Module/Storage_Account"
sas = var.sas
}