output "container_registry_webhooks" {
  description = "All container_registry_webhook resources"
  value       = azurerm_container_registry_webhook.container_registry_webhooks
}
output "container_registry_webhooks_actions" {
  description = "List of actions values across all container_registry_webhooks"
  value       = [for k, v in azurerm_container_registry_webhook.container_registry_webhooks : v.actions]
}
output "container_registry_webhooks_custom_headers" {
  description = "List of custom_headers values across all container_registry_webhooks"
  value       = [for k, v in azurerm_container_registry_webhook.container_registry_webhooks : v.custom_headers]
}
output "container_registry_webhooks_location" {
  description = "List of location values across all container_registry_webhooks"
  value       = [for k, v in azurerm_container_registry_webhook.container_registry_webhooks : v.location]
}
output "container_registry_webhooks_name" {
  description = "List of name values across all container_registry_webhooks"
  value       = [for k, v in azurerm_container_registry_webhook.container_registry_webhooks : v.name]
}
output "container_registry_webhooks_registry_name" {
  description = "List of registry_name values across all container_registry_webhooks"
  value       = [for k, v in azurerm_container_registry_webhook.container_registry_webhooks : v.registry_name]
}
output "container_registry_webhooks_resource_group_name" {
  description = "List of resource_group_name values across all container_registry_webhooks"
  value       = [for k, v in azurerm_container_registry_webhook.container_registry_webhooks : v.resource_group_name]
}
output "container_registry_webhooks_scope" {
  description = "List of scope values across all container_registry_webhooks"
  value       = [for k, v in azurerm_container_registry_webhook.container_registry_webhooks : v.scope]
}
output "container_registry_webhooks_service_uri" {
  description = "List of service_uri values across all container_registry_webhooks"
  value       = [for k, v in azurerm_container_registry_webhook.container_registry_webhooks : v.service_uri]
}
output "container_registry_webhooks_status" {
  description = "List of status values across all container_registry_webhooks"
  value       = [for k, v in azurerm_container_registry_webhook.container_registry_webhooks : v.status]
}
output "container_registry_webhooks_tags" {
  description = "List of tags values across all container_registry_webhooks"
  value       = [for k, v in azurerm_container_registry_webhook.container_registry_webhooks : v.tags]
}

