resource "helm_release" "openstack_cloud_controller_manager" {
  name             = "openstack-cloud-controller-manager"
  repository       = "https://kubernetes.github.io/cloud-provider-openstack/"
  chart            = "openstack-cloud-controller-manager"
  version          = "2.29.0"
  namespace        = "openstack-cloud-controller"
  create_namespace = true

  values = [
    file("${path.module}/values/openstack-cloud-controller-manager.yaml")
  ]
}
