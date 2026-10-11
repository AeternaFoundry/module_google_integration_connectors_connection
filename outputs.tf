output "integration_connectors_connections_id" {
  description = "Map of id values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no id are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "integration_connectors_connections_auth_config" {
  description = "Map of auth_config values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no auth_config are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => one(v.auth_config) if v.auth_config != null && length(v.auth_config) > 0 }
}
output "integration_connectors_connections_config_variable" {
  description = "Map of config_variable values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no config_variable are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.config_variable if v.config_variable != null && length(v.config_variable) > 0 }
}
output "integration_connectors_connections_connection_revision" {
  description = "Map of connection_revision values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no connection_revision are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.connection_revision if v.connection_revision != null && length(v.connection_revision) > 0 }
}
output "integration_connectors_connections_connector_version" {
  description = "Map of connector_version values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no connector_version are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.connector_version if v.connector_version != null && length(v.connector_version) > 0 }
}
output "integration_connectors_connections_connector_version_infra_config" {
  description = "Map of connector_version_infra_config values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no connector_version_infra_config are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.connector_version_infra_config if v.connector_version_infra_config != null && length(v.connector_version_infra_config) > 0 }
}
output "integration_connectors_connections_connector_version_launch_stage" {
  description = "Map of connector_version_launch_stage values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no connector_version_launch_stage are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.connector_version_launch_stage if v.connector_version_launch_stage != null && length(v.connector_version_launch_stage) > 0 }
}
output "integration_connectors_connections_create_time" {
  description = "Map of create_time values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no create_time are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "integration_connectors_connections_deletion_policy" {
  description = "Map of deletion_policy values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no deletion_policy are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "integration_connectors_connections_description" {
  description = "Map of description values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no description are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.description if v.description != null && length(v.description) > 0 }
}
output "integration_connectors_connections_destination_config" {
  description = "Map of destination_config values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no destination_config are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.destination_config if v.destination_config != null && length(v.destination_config) > 0 }
}
output "integration_connectors_connections_effective_labels" {
  description = "Map of effective_labels values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no effective_labels are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "integration_connectors_connections_eventing_config" {
  description = "Map of eventing_config values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no eventing_config are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => one(v.eventing_config) if v.eventing_config != null && length(v.eventing_config) > 0 }
}
output "integration_connectors_connections_eventing_enablement_type" {
  description = "Map of eventing_enablement_type values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no eventing_enablement_type are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.eventing_enablement_type if v.eventing_enablement_type != null && length(v.eventing_enablement_type) > 0 }
}
output "integration_connectors_connections_eventing_runtime_data" {
  description = "Map of eventing_runtime_data values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no eventing_runtime_data are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.eventing_runtime_data if v.eventing_runtime_data != null && length(v.eventing_runtime_data) > 0 }
}
output "integration_connectors_connections_labels" {
  description = "Map of labels values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no labels are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "integration_connectors_connections_location" {
  description = "Map of location values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no location are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.location if v.location != null && length(v.location) > 0 }
}
output "integration_connectors_connections_lock_config" {
  description = "Map of lock_config values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no lock_config are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => one(v.lock_config) if v.lock_config != null && length(v.lock_config) > 0 }
}
output "integration_connectors_connections_log_config" {
  description = "Map of log_config values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no log_config are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => one(v.log_config) if v.log_config != null && length(v.log_config) > 0 }
}
output "integration_connectors_connections_name" {
  description = "Map of name values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no name are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "integration_connectors_connections_node_config" {
  description = "Map of node_config values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no node_config are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => one(v.node_config) if v.node_config != null && length(v.node_config) > 0 }
}
output "integration_connectors_connections_project" {
  description = "Map of project values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no project are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.project if v.project != null && length(v.project) > 0 }
}
output "integration_connectors_connections_service_account" {
  description = "Map of service_account values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no service_account are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.service_account if v.service_account != null && length(v.service_account) > 0 }
}
output "integration_connectors_connections_service_directory" {
  description = "Map of service_directory values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no service_directory are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.service_directory if v.service_directory != null && length(v.service_directory) > 0 }
}
output "integration_connectors_connections_ssl_config" {
  description = "Map of ssl_config values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no ssl_config are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => one(v.ssl_config) if v.ssl_config != null && length(v.ssl_config) > 0 }
}
output "integration_connectors_connections_status" {
  description = "Map of status values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no status are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.status if v.status != null && length(v.status) > 0 }
}
output "integration_connectors_connections_subscription_type" {
  description = "Map of subscription_type values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no subscription_type are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.subscription_type if v.subscription_type != null && length(v.subscription_type) > 0 }
}
output "integration_connectors_connections_suspended" {
  description = "Map of suspended values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no suspended are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.suspended if v.suspended != null }
}
output "integration_connectors_connections_terraform_labels" {
  description = "Map of terraform_labels values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no terraform_labels are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "integration_connectors_connections_update_time" {
  description = "Map of update_time values across all integration_connectors_connections, keyed the same as var.integration_connectors_connections except keys with no update_time are omitted"
  value       = { for k, v in google_integration_connectors_connection.integration_connectors_connections : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

