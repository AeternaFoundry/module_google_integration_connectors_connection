resource "google_integration_connectors_connection" "integration_connectors_connections" {
  for_each = var.integration_connectors_connections

  connector_version        = each.value.connector_version
  location                 = each.value.location
  name                     = each.value.name
  deletion_policy          = each.value.deletion_policy
  description              = each.value.description
  eventing_enablement_type = each.value.eventing_enablement_type
  labels                   = each.value.labels
  project                  = each.value.project
  service_account          = each.value.service_account
  suspended                = each.value.suspended

  dynamic "auth_config" {
    for_each = each.value.auth_config != null ? [each.value.auth_config] : []
    content {
      dynamic "additional_variable" {
        for_each = auth_config.value.additional_variable != null ? auth_config.value.additional_variable : []
        content {
          boolean_value = additional_variable.value.boolean_value
          dynamic "encryption_key_value" {
            for_each = additional_variable.value.encryption_key_value != null ? [additional_variable.value.encryption_key_value] : []
            content {
              kms_key_name = encryption_key_value.value.kms_key_name
              type         = encryption_key_value.value.type
            }
          }
          integer_value = additional_variable.value.integer_value
          key           = additional_variable.value.key
          dynamic "secret_value" {
            for_each = additional_variable.value.secret_value != null ? [additional_variable.value.secret_value] : []
            content {
              secret_version = secret_value.value.secret_version
            }
          }
          string_value = additional_variable.value.string_value
        }
      }
      auth_key  = auth_config.value.auth_key
      auth_type = auth_config.value.auth_type
      dynamic "oauth2_auth_code_flow" {
        for_each = auth_config.value.oauth2_auth_code_flow != null ? [auth_config.value.oauth2_auth_code_flow] : []
        content {
          auth_uri  = oauth2_auth_code_flow.value.auth_uri
          client_id = oauth2_auth_code_flow.value.client_id
          dynamic "client_secret" {
            for_each = oauth2_auth_code_flow.value.client_secret != null ? [oauth2_auth_code_flow.value.client_secret] : []
            content {
              secret_version = client_secret.value.secret_version
            }
          }
          enable_pkce = oauth2_auth_code_flow.value.enable_pkce
          scopes      = oauth2_auth_code_flow.value.scopes
        }
      }
      dynamic "oauth2_client_credentials" {
        for_each = auth_config.value.oauth2_client_credentials != null ? [auth_config.value.oauth2_client_credentials] : []
        content {
          client_id = oauth2_client_credentials.value.client_id
          dynamic "client_secret" {
            for_each = oauth2_client_credentials.value.client_secret != null ? [oauth2_client_credentials.value.client_secret] : []
            content {
              secret_version = client_secret.value.secret_version
            }
          }
        }
      }
      dynamic "oauth2_jwt_bearer" {
        for_each = auth_config.value.oauth2_jwt_bearer != null ? [auth_config.value.oauth2_jwt_bearer] : []
        content {
          dynamic "client_key" {
            for_each = oauth2_jwt_bearer.value.client_key != null ? [oauth2_jwt_bearer.value.client_key] : []
            content {
              secret_version = client_key.value.secret_version
            }
          }
          dynamic "jwt_claims" {
            for_each = oauth2_jwt_bearer.value.jwt_claims != null ? [oauth2_jwt_bearer.value.jwt_claims] : []
            content {
              audience = jwt_claims.value.audience
              issuer   = jwt_claims.value.issuer
              subject  = jwt_claims.value.subject
            }
          }
        }
      }
      dynamic "ssh_public_key" {
        for_each = auth_config.value.ssh_public_key != null ? [auth_config.value.ssh_public_key] : []
        content {
          cert_type = ssh_public_key.value.cert_type
          dynamic "ssh_client_cert" {
            for_each = ssh_public_key.value.ssh_client_cert != null ? [ssh_public_key.value.ssh_client_cert] : []
            content {
              secret_version = ssh_client_cert.value.secret_version
            }
          }
          dynamic "ssh_client_cert_pass" {
            for_each = ssh_public_key.value.ssh_client_cert_pass != null ? [ssh_public_key.value.ssh_client_cert_pass] : []
            content {
              secret_version = ssh_client_cert_pass.value.secret_version
            }
          }
          username = ssh_public_key.value.username
        }
      }
      dynamic "user_password" {
        for_each = auth_config.value.user_password != null ? [auth_config.value.user_password] : []
        content {
          dynamic "password" {
            for_each = user_password.value.password != null ? [user_password.value.password] : []
            content {
              secret_version = password.value.secret_version
            }
          }
          username = user_password.value.username
        }
      }
    }
  }

  dynamic "config_variable" {
    for_each = each.value.config_variable != null ? each.value.config_variable : []
    content {
      boolean_value = config_variable.value.boolean_value
      dynamic "encryption_key_value" {
        for_each = config_variable.value.encryption_key_value != null ? [config_variable.value.encryption_key_value] : []
        content {
          kms_key_name = encryption_key_value.value.kms_key_name
          type         = encryption_key_value.value.type
        }
      }
      integer_value = config_variable.value.integer_value
      key           = config_variable.value.key
      dynamic "secret_value" {
        for_each = config_variable.value.secret_value != null ? [config_variable.value.secret_value] : []
        content {
          secret_version = secret_value.value.secret_version
        }
      }
      string_value = config_variable.value.string_value
    }
  }

  dynamic "destination_config" {
    for_each = each.value.destination_config != null ? each.value.destination_config : []
    content {
      dynamic "destination" {
        for_each = destination_config.value.destination != null ? destination_config.value.destination : []
        content {
          host               = destination.value.host
          port               = destination.value.port
          service_attachment = destination.value.service_attachment
        }
      }
      key = destination_config.value.key
    }
  }

  dynamic "eventing_config" {
    for_each = each.value.eventing_config != null ? [each.value.eventing_config] : []
    content {
      dynamic "additional_variable" {
        for_each = eventing_config.value.additional_variable != null ? eventing_config.value.additional_variable : []
        content {
          boolean_value = additional_variable.value.boolean_value
          dynamic "encryption_key_value" {
            for_each = additional_variable.value.encryption_key_value != null ? [additional_variable.value.encryption_key_value] : []
            content {
              kms_key_name = encryption_key_value.value.kms_key_name
              type         = encryption_key_value.value.type
            }
          }
          integer_value = additional_variable.value.integer_value
          key           = additional_variable.value.key
          dynamic "secret_value" {
            for_each = additional_variable.value.secret_value != null ? [additional_variable.value.secret_value] : []
            content {
              secret_version = secret_value.value.secret_version
            }
          }
          string_value = additional_variable.value.string_value
        }
      }
      dynamic "auth_config" {
        for_each = eventing_config.value.auth_config != null ? [eventing_config.value.auth_config] : []
        content {
          dynamic "additional_variable" {
            for_each = auth_config.value.additional_variable != null ? auth_config.value.additional_variable : []
            content {
              boolean_value = additional_variable.value.boolean_value
              dynamic "encryption_key_value" {
                for_each = additional_variable.value.encryption_key_value != null ? [additional_variable.value.encryption_key_value] : []
                content {
                  kms_key_name = encryption_key_value.value.kms_key_name
                  type         = encryption_key_value.value.type
                }
              }
              integer_value = additional_variable.value.integer_value
              key           = additional_variable.value.key
              dynamic "secret_value" {
                for_each = additional_variable.value.secret_value != null ? [additional_variable.value.secret_value] : []
                content {
                  secret_version = secret_value.value.secret_version
                }
              }
              string_value = additional_variable.value.string_value
            }
          }
          auth_key  = auth_config.value.auth_key
          auth_type = auth_config.value.auth_type
          user_password {
            dynamic "password" {
              for_each = auth_config.value.user_password.password != null ? [auth_config.value.user_password.password] : []
              content {
                secret_version = password.value.secret_version
              }
            }
            username = auth_config.value.user_password.username
          }
        }
      }
      enrichment_enabled = eventing_config.value.enrichment_enabled
      registration_destination_config {
        dynamic "destination" {
          for_each = eventing_config.value.registration_destination_config.destination != null ? eventing_config.value.registration_destination_config.destination : []
          content {
            host               = destination.value.host
            port               = destination.value.port
            service_attachment = destination.value.service_attachment
          }
        }
        key = eventing_config.value.registration_destination_config.key
      }
    }
  }

  dynamic "lock_config" {
    for_each = each.value.lock_config != null ? [each.value.lock_config] : []
    content {
      locked = lock_config.value.locked
      reason = lock_config.value.reason
    }
  }

  dynamic "log_config" {
    for_each = each.value.log_config != null ? [each.value.log_config] : []
    content {
      enabled = log_config.value.enabled
      level   = log_config.value.level
    }
  }

  dynamic "node_config" {
    for_each = each.value.node_config != null ? [each.value.node_config] : []
    content {
      max_node_count = node_config.value.max_node_count
      min_node_count = node_config.value.min_node_count
    }
  }

  dynamic "ssl_config" {
    for_each = each.value.ssl_config != null ? [each.value.ssl_config] : []
    content {
      dynamic "additional_variable" {
        for_each = ssl_config.value.additional_variable != null ? ssl_config.value.additional_variable : []
        content {
          boolean_value = additional_variable.value.boolean_value
          dynamic "encryption_key_value" {
            for_each = additional_variable.value.encryption_key_value != null ? [additional_variable.value.encryption_key_value] : []
            content {
              kms_key_name = encryption_key_value.value.kms_key_name
              type         = encryption_key_value.value.type
            }
          }
          integer_value = additional_variable.value.integer_value
          key           = additional_variable.value.key
          dynamic "secret_value" {
            for_each = additional_variable.value.secret_value != null ? [additional_variable.value.secret_value] : []
            content {
              secret_version = secret_value.value.secret_version
            }
          }
          string_value = additional_variable.value.string_value
        }
      }
      client_cert_type = ssl_config.value.client_cert_type
      dynamic "client_certificate" {
        for_each = ssl_config.value.client_certificate != null ? [ssl_config.value.client_certificate] : []
        content {
          secret_version = client_certificate.value.secret_version
        }
      }
      dynamic "client_private_key" {
        for_each = ssl_config.value.client_private_key != null ? [ssl_config.value.client_private_key] : []
        content {
          secret_version = client_private_key.value.secret_version
        }
      }
      dynamic "client_private_key_pass" {
        for_each = ssl_config.value.client_private_key_pass != null ? [ssl_config.value.client_private_key_pass] : []
        content {
          secret_version = client_private_key_pass.value.secret_version
        }
      }
      dynamic "private_server_certificate" {
        for_each = ssl_config.value.private_server_certificate != null ? [ssl_config.value.private_server_certificate] : []
        content {
          secret_version = private_server_certificate.value.secret_version
        }
      }
      server_cert_type = ssl_config.value.server_cert_type
      trust_model      = ssl_config.value.trust_model
      type             = ssl_config.value.type
      use_ssl          = ssl_config.value.use_ssl
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

