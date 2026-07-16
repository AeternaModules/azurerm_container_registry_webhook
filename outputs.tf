output "container_registry_webhooks_id" {
  description = "Map of id values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "container_registry_webhooks_actions" {
  description = "Map of actions values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.actions if v.actions != null && length(v.actions) > 0 }
}
output "container_registry_webhooks_custom_headers" {
  description = "Map of custom_headers values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.custom_headers if v.custom_headers != null && length(v.custom_headers) > 0 }
}
output "container_registry_webhooks_location" {
  description = "Map of location values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.location if v.location != null && length(v.location) > 0 }
}
output "container_registry_webhooks_name" {
  description = "Map of name values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "container_registry_webhooks_registry_name" {
  description = "Map of registry_name values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.registry_name if v.registry_name != null && length(v.registry_name) > 0 }
}
output "container_registry_webhooks_resource_group_name" {
  description = "Map of resource_group_name values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "container_registry_webhooks_scope" {
  description = "Map of scope values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.scope if v.scope != null && length(v.scope) > 0 }
}
output "container_registry_webhooks_service_uri" {
  description = "Map of service_uri values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.service_uri if v.service_uri != null && length(v.service_uri) > 0 }
}
output "container_registry_webhooks_status" {
  description = "Map of status values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.status if v.status != null && length(v.status) > 0 }
}
output "container_registry_webhooks_tags" {
  description = "Map of tags values across all container_registry_webhooks, keyed the same as var.container_registry_webhooks"
  value       = { for k, v in azurerm_container_registry_webhook.container_registry_webhooks : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

