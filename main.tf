resource "databricks_azure_blob_mount" "azure_blob_mounts" {
  for_each = var.azure_blob_mounts

  auth_type            = each.value.auth_type
  container_name       = each.value.container_name
  mount_name           = each.value.mount_name
  storage_account_name = each.value.storage_account_name
  token_secret_key     = each.value.token_secret_key
  token_secret_scope   = each.value.token_secret_scope
  cluster_id           = each.value.cluster_id
  directory            = each.value.directory
}

