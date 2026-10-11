output "azure_blob_mounts_id" {
  description = "Map of id values across all azure_blob_mounts, keyed the same as var.azure_blob_mounts except keys with no id are omitted"
  value       = { for k, v in databricks_azure_blob_mount.azure_blob_mounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "azure_blob_mounts_auth_type" {
  description = "Map of auth_type values across all azure_blob_mounts, keyed the same as var.azure_blob_mounts except keys with no auth_type are omitted"
  value       = { for k, v in databricks_azure_blob_mount.azure_blob_mounts : k => v.auth_type if v.auth_type != null && length(v.auth_type) > 0 }
}
output "azure_blob_mounts_cluster_id" {
  description = "Map of cluster_id values across all azure_blob_mounts, keyed the same as var.azure_blob_mounts except keys with no cluster_id are omitted"
  value       = { for k, v in databricks_azure_blob_mount.azure_blob_mounts : k => v.cluster_id if v.cluster_id != null && length(v.cluster_id) > 0 }
}
output "azure_blob_mounts_container_name" {
  description = "Map of container_name values across all azure_blob_mounts, keyed the same as var.azure_blob_mounts except keys with no container_name are omitted"
  value       = { for k, v in databricks_azure_blob_mount.azure_blob_mounts : k => v.container_name if v.container_name != null && length(v.container_name) > 0 }
}
output "azure_blob_mounts_directory" {
  description = "Map of directory values across all azure_blob_mounts, keyed the same as var.azure_blob_mounts except keys with no directory are omitted"
  value       = { for k, v in databricks_azure_blob_mount.azure_blob_mounts : k => v.directory if v.directory != null && length(v.directory) > 0 }
}
output "azure_blob_mounts_mount_name" {
  description = "Map of mount_name values across all azure_blob_mounts, keyed the same as var.azure_blob_mounts except keys with no mount_name are omitted"
  value       = { for k, v in databricks_azure_blob_mount.azure_blob_mounts : k => v.mount_name if v.mount_name != null && length(v.mount_name) > 0 }
}
output "azure_blob_mounts_source" {
  description = "Map of source values across all azure_blob_mounts, keyed the same as var.azure_blob_mounts except keys with no source are omitted"
  value       = { for k, v in databricks_azure_blob_mount.azure_blob_mounts : k => v.source if v.source != null && length(v.source) > 0 }
}
output "azure_blob_mounts_storage_account_name" {
  description = "Map of storage_account_name values across all azure_blob_mounts, keyed the same as var.azure_blob_mounts except keys with no storage_account_name are omitted"
  value       = { for k, v in databricks_azure_blob_mount.azure_blob_mounts : k => v.storage_account_name if v.storage_account_name != null && length(v.storage_account_name) > 0 }
}
output "azure_blob_mounts_token_secret_key" {
  description = "Map of token_secret_key values across all azure_blob_mounts, keyed the same as var.azure_blob_mounts except keys with no token_secret_key are omitted"
  value       = { for k, v in databricks_azure_blob_mount.azure_blob_mounts : k => v.token_secret_key if v.token_secret_key != null && length(v.token_secret_key) > 0 }
  sensitive   = true
}
output "azure_blob_mounts_token_secret_scope" {
  description = "Map of token_secret_scope values across all azure_blob_mounts, keyed the same as var.azure_blob_mounts except keys with no token_secret_scope are omitted"
  value       = { for k, v in databricks_azure_blob_mount.azure_blob_mounts : k => v.token_secret_scope if v.token_secret_scope != null && length(v.token_secret_scope) > 0 }
}

