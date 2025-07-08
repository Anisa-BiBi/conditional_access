resource "azuread_conditional_access_policy" "block_untrusted_access" {
  display_name = "Block Non-Compliant Devices from Untrusted Locations"
  state        = "enabled"

  conditions {
    users {
      include_users = ["All"]
      exclude_guests_or_external_users = true
    }

    sign_in_risk_levels = ["medium", "high"]

    locations {
      include_location_ids = ["All"]
      exclude_location_ids = var.trusted_location_ids
    }

    client_app_types = ["all"]
    device_states {
      include_compliant_devices_only = true
    }
  }

  grant_controls {
    operator         = "OR"
    built_in_controls = ["mfa"]
  }

  session_controls {
    application_enforced_restrictions_enabled = true
  }
}

