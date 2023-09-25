output "location-resource-group-eua" {
  value = azurerm_resource_group.resource_group["EUA"].location
}
output "location-resource-group-europe" {
  value = azurerm_resource_group.resource_group["Europe"].location
}
output "location-resource-group-asia" {
  value = azurerm_resource_group.resource_group["Asia"].location
}