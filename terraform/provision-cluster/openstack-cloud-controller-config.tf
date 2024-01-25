data "openstack_networking_network_v2" "public" {
  name = "public"
}

data "openstack_networking_subnet_v2" "private_subnet" {
  name = "private-subnet"
}

resource "kubernetes_secret" "openstack_cloud_provider" {
  depends_on = [helm_release.openstack_cloud_controller_manager]

  metadata {
    name      = "openstack-cloud-controller-config"
    namespace = "openstack-cloud-controller"
  }

  data = {
    "cloud.conf" = <<-EOF
  [Global]
  auth-url = ${var.auth_url}
  application-credential-id = ${openstack_identity_application_credential_v3.application_credentials.id}
  application-credential-name = ${openstack_identity_application_credential_v3.application_credentials.name}
  application-credential-secret = ${openstack_identity_application_credential_v3.application_credentials.secret}
  region = regionOne
  tls-insecure = true

  [LoadBalancer]
  use-octavia=true
  floating-network-id=${data.openstack_networking_network_v2.public.id}
  subnet-id=${data.openstack_networking_subnet_v2.private_subnet.id}
  EOF
  }
}
