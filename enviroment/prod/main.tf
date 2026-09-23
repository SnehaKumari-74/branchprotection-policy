module "resourcegroup" {
    source = "../../module/azurerm-resource-group"
    rgs = var.resource_group
 
}

 module "storageaccount"{
    depends_on = [module.resourcegroup]
    source = "../../module/azurerm-storage-account"
    St_group  = var.staccount
 }
