variable "integration_connectors_connections" {
  description = <<EOT
Map of integration_connectors_connections, attributes below
Required:
    - connector_version
    - location
    - name
Optional:
    - deletion_policy
    - description
    - eventing_enablement_type
    - labels
    - project
    - service_account
    - suspended
    - auth_config (block):
        - additional_variable (optional, block):
            - boolean_value (optional)
            - encryption_key_value (optional, block):
                - kms_key_name (optional)
                - type (required)
            - integer_value (optional)
            - key (required)
            - secret_value (optional, block):
                - secret_version (required)
            - string_value (optional)
        - auth_key (optional)
        - auth_type (required)
        - oauth2_auth_code_flow (optional, block):
            - auth_uri (optional)
            - client_id (optional)
            - client_secret (optional, block):
                - secret_version (required)
            - enable_pkce (optional)
            - scopes (optional)
        - oauth2_client_credentials (optional, block):
            - client_id (required)
            - client_secret (optional, block):
                - secret_version (required)
        - oauth2_jwt_bearer (optional, block):
            - client_key (optional, block):
                - secret_version (required)
            - jwt_claims (optional, block):
                - audience (optional)
                - issuer (optional)
                - subject (optional)
        - ssh_public_key (optional, block):
            - cert_type (optional)
            - ssh_client_cert (optional, block):
                - secret_version (required)
            - ssh_client_cert_pass (optional, block):
                - secret_version (required)
            - username (required)
        - user_password (optional, block):
            - password (optional, block):
                - secret_version (required)
            - username (required)
    - config_variable (block):
        - boolean_value (optional)
        - encryption_key_value (optional, block):
            - kms_key_name (optional)
            - type (required)
        - integer_value (optional)
        - key (required)
        - secret_value (optional, block):
            - secret_version (required)
        - string_value (optional)
    - destination_config (block):
        - destination (optional, block):
            - host (optional)
            - port (optional)
            - service_attachment (optional)
        - key (required)
    - eventing_config (block):
        - additional_variable (optional, block):
            - boolean_value (optional)
            - encryption_key_value (optional, block):
                - kms_key_name (optional)
                - type (optional)
            - integer_value (optional)
            - key (required)
            - secret_value (optional, block):
                - secret_version (required)
            - string_value (optional)
        - auth_config (optional, block):
            - additional_variable (optional, block):
                - boolean_value (optional)
                - encryption_key_value (optional, block):
                    - kms_key_name (optional)
                    - type (optional)
                - integer_value (optional)
                - key (required)
                - secret_value (optional, block):
                    - secret_version (required)
                - string_value (optional)
            - auth_key (optional)
            - auth_type (required)
            - user_password (required, block):
                - password (optional, block):
                    - secret_version (required)
                - username (optional)
        - enrichment_enabled (optional)
        - registration_destination_config (required, block):
            - destination (optional, block):
                - host (optional)
                - port (optional)
                - service_attachment (optional)
            - key (optional)
    - lock_config (block):
        - locked (required)
        - reason (optional)
    - log_config (block):
        - enabled (required)
        - level (optional)
    - node_config (block):
        - max_node_count (optional)
        - min_node_count (optional)
    - ssl_config (block):
        - additional_variable (optional, block):
            - boolean_value (optional)
            - encryption_key_value (optional, block):
                - kms_key_name (optional)
                - type (optional)
            - integer_value (optional)
            - key (required)
            - secret_value (optional, block):
                - secret_version (required)
            - string_value (optional)
        - client_cert_type (optional)
        - client_certificate (optional, block):
            - secret_version (required)
        - client_private_key (optional, block):
            - secret_version (required)
        - client_private_key_pass (optional, block):
            - secret_version (required)
        - private_server_certificate (optional, block):
            - secret_version (required)
        - server_cert_type (optional)
        - trust_model (optional)
        - type (required)
        - use_ssl (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    connector_version        = string
    location                 = string
    name                     = string
    deletion_policy          = optional(string)
    description              = optional(string)
    eventing_enablement_type = optional(string)
    labels                   = optional(map(string))
    project                  = optional(string)
    service_account          = optional(string)
    suspended                = optional(bool)
    auth_config = optional(object({
      additional_variable = optional(list(object({
        boolean_value = optional(bool)
        encryption_key_value = optional(object({
          kms_key_name = optional(string)
          type         = string
        }))
        integer_value = optional(number)
        key           = string
        secret_value = optional(object({
          secret_version = string
        }))
        string_value = optional(string)
      })))
      auth_key  = optional(string)
      auth_type = string
      oauth2_auth_code_flow = optional(object({
        auth_uri  = optional(string)
        client_id = optional(string)
        client_secret = optional(object({
          secret_version = string
        }))
        enable_pkce = optional(bool)
        scopes      = optional(list(string))
      }))
      oauth2_client_credentials = optional(object({
        client_id = string
        client_secret = optional(object({
          secret_version = string
        }))
      }))
      oauth2_jwt_bearer = optional(object({
        client_key = optional(object({
          secret_version = string
        }))
        jwt_claims = optional(object({
          audience = optional(string)
          issuer   = optional(string)
          subject  = optional(string)
        }))
      }))
      ssh_public_key = optional(object({
        cert_type = optional(string)
        ssh_client_cert = optional(object({
          secret_version = string
        }))
        ssh_client_cert_pass = optional(object({
          secret_version = string
        }))
        username = string
      }))
      user_password = optional(object({
        password = optional(object({
          secret_version = string
        }))
        username = string
      }))
    }))
    config_variable = optional(list(object({
      boolean_value = optional(bool)
      encryption_key_value = optional(object({
        kms_key_name = optional(string)
        type         = string
      }))
      integer_value = optional(number)
      key           = string
      secret_value = optional(object({
        secret_version = string
      }))
      string_value = optional(string)
    })))
    destination_config = optional(list(object({
      destination = optional(list(object({
        host               = optional(string)
        port               = optional(number)
        service_attachment = optional(string)
      })))
      key = string
    })))
    eventing_config = optional(object({
      additional_variable = optional(list(object({
        boolean_value = optional(bool)
        encryption_key_value = optional(object({
          kms_key_name = optional(string)
          type         = optional(string)
        }))
        integer_value = optional(number)
        key           = string
        secret_value = optional(object({
          secret_version = string
        }))
        string_value = optional(string)
      })))
      auth_config = optional(object({
        additional_variable = optional(list(object({
          boolean_value = optional(bool)
          encryption_key_value = optional(object({
            kms_key_name = optional(string)
            type         = optional(string)
          }))
          integer_value = optional(number)
          key           = string
          secret_value = optional(object({
            secret_version = string
          }))
          string_value = optional(string)
        })))
        auth_key  = optional(string)
        auth_type = string
        user_password = object({
          password = optional(object({
            secret_version = string
          }))
          username = optional(string)
        })
      }))
      enrichment_enabled = optional(bool)
      registration_destination_config = object({
        destination = optional(list(object({
          host               = optional(string)
          port               = optional(number)
          service_attachment = optional(string)
        })))
        key = optional(string)
      })
    }))
    lock_config = optional(object({
      locked = bool
      reason = optional(string)
    }))
    log_config = optional(object({
      enabled = bool
      level   = optional(string)
    }))
    node_config = optional(object({
      max_node_count = optional(number)
      min_node_count = optional(number)
    }))
    ssl_config = optional(object({
      additional_variable = optional(list(object({
        boolean_value = optional(bool)
        encryption_key_value = optional(object({
          kms_key_name = optional(string)
          type         = optional(string)
        }))
        integer_value = optional(number)
        key           = string
        secret_value = optional(object({
          secret_version = string
        }))
        string_value = optional(string)
      })))
      client_cert_type = optional(string)
      client_certificate = optional(object({
        secret_version = string
      }))
      client_private_key = optional(object({
        secret_version = string
      }))
      client_private_key_pass = optional(object({
        secret_version = string
      }))
      private_server_certificate = optional(object({
        secret_version = string
      }))
      server_cert_type = optional(string)
      trust_model      = optional(string)
      type             = string
      use_ssl          = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 13 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

