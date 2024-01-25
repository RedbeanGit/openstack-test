resource "random_password" "password" {
  length  = 16
  special = true
}

resource "openstack_identity_application_credential_v3" "application_credentials" {
  name         = "application-credentials"
  secret       = random_password.password.result
  unrestricted = true
}
