resource "azurerm_service_plan" "service_plan_itu" {
  name                  = var.service_plan_name
  location              = var.location
  resource_group_name   = var.rg_name 
  os_type               = var.sp_os
  sku_name              = var.sp_sku
}