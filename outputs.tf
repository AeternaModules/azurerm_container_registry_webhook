output "container_registry_webhooks_id" {
  description = "Map of id values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.id }
}
output "container_registry_webhooks_actions" {
  description = "Map of actions values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.actions }
}
output "container_registry_webhooks_custom_headers" {
  description = "Map of custom_headers values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.custom_headers }
}
output "container_registry_webhooks_location" {
  description = "Map of location values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.location }
}
output "container_registry_webhooks_name" {
  description = "Map of name values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.name }
}
output "container_registry_webhooks_registry_name" {
  description = "Map of registry_name values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.registry_name }
}
output "container_registry_webhooks_resource_group_name" {
  description = "Map of resource_group_name values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.resource_group_name }
}
output "container_registry_webhooks_scope" {
  description = "Map of scope values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.scope }
}
output "container_registry_webhooks_service_uri" {
  description = "Map of service_uri values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.service_uri }
}
output "container_registry_webhooks_status" {
  description = "Map of status values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.status }
}
output "container_registry_webhooks_tags" {
  description = "Map of tags values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.tags }
}

