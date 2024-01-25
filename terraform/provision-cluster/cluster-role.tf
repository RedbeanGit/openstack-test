resource "kubernetes_cluster_role" "cloud_controller_manager_role" {
  metadata {
    name = "cloud-controller-manager-role"
  }

  rule {
    api_groups = [""]
    resources  = ["services"]
    verbs      = ["get", "watch", "list", "patch"]
  }
}

resource "kubernetes_cluster_role_binding" "cloud_controller_manager_role_binding" {
  metadata {
    name = "cloud-controller-manager-rolebinding"
  }

  subject {
    kind      = "ServiceAccount"
    name      = "cloud-controller-manager"
    namespace = "kube-system"
  }

  role_ref {
    kind      = "ClusterRole"
    name      = kubernetes_cluster_role.cloud_controller_manager_role.metadata[0].name
    api_group = "rbac.authorization.k8s.io"
  }
}
