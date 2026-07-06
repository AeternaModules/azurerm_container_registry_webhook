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
    scope               = optional(string) # Default: ""
    status              = optional(string) # Default: "enabled"
    tags                = optional(map(string))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_container_registry_webhook's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.ContainerRegistryWebhookName] !regexp.MustCompile(`^[a-zA-Z0-9]{5,50}$`).MatchString(value)
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: registry_name
  #   source:    [from validate.ContainerRegistryName] !regexp.MustCompile(`^[a-zA-Z0-9]+$`).MatchString(value)
  # path: registry_name
  #   source:    [from validate.ContainerRegistryName] 5 > len(value)
  # path: registry_name
  #   condition: length(value) <= 50
  #   message:   [from validate.ContainerRegistryName: invalid when len(value) > 50]
  #   source:    [from validate.ContainerRegistryName: invalid when len(value) > 50]
  # path: service_uri
  #   source:    [from validate.ContainerRegistryWebhookServiceUri] !regexp.MustCompile(`^https?://[^\s]+$`).MatchString(value)
  # path: status
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: actions[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

