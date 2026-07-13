variable "container_registry_webhooks" {
  description = <<EOT
Map of container_registry_webhooks, attributes below
Required:
    - actions
    - location
    - name
    - registry_name
    - resource_group_name
    - service_uri
Optional:
    - custom_headers
    - scope
    - status
    - tags
EOT

  type = map(object({
    actions             = set(string)
    location            = string
    name                = string
    registry_name       = string
    resource_group_name = string
    service_uri         = string
    custom_headers      = optional(map(string))
    scope               = optional(string)
    status              = optional(string)
    tags                = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.container_registry_webhooks : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_registry_webhooks : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_registry_webhooks : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_registry_webhooks : (
        length(v.registry_name) <= 50
      )
    ])
    error_message = "[from validate.ContainerRegistryName: invalid when len(value) > 50]"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_registry_webhooks : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

