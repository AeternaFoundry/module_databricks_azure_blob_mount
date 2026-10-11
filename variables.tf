variable "azure_blob_mounts" {
  description = <<EOT
Map of azure_blob_mounts, attributes below
Required:
    - auth_type
    - container_name
    - mount_name
    - storage_account_name
    - token_secret_key
    - token_secret_scope
Optional:
    - cluster_id
    - directory
EOT

  type = map(object({
    auth_type            = string
    container_name       = string
    mount_name           = string
    storage_account_name = string
    token_secret_key     = string
    token_secret_scope   = string
    cluster_id           = optional(string)
    directory            = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.azure_blob_mounts : (
        contains(["SAS", "ACCESS_KEY"], v.auth_type)
      )
    ])
    error_message = "must be one of: \"SAS\", \"ACCESS_KEY\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

