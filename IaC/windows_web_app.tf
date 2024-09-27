resource "azurerm_windows_web_app" "webapp_itu" {
  depends_on = [
    azurerm_service_plan.service_plan_itu
  ]

  name                = var.webapp_name
  location            = azurerm_service_plan.service_plan_itu.location
  resource_group_name = azurerm_service_plan.service_plan_itu.resource_group_name
  service_plan_id     = azurerm_service_plan.service_plan_itu.id

  site_config {
    application_stack { 
      dotnet_version = "v8.0"
      current_stack  = "dotnet"
    }
  }
}