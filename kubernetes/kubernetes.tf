resource "k0s_cluster" "kubernetes_cluster" {
  name    = "kubernetes-cluster"
  version = "1.28.5+k0s.0"

  hosts = concat(
    [for i in range(var.nb_master) : {
      role = "controller"

      ssh = {
        address = openstack_networking_floatingip_v2.master_floating_ip[i].address
        port    = 22
        user    = "root"
      }
    }],
    [for i in range(var.nb_worker) : {
      role = "worker"

      ssh = {
        address = openstack_networking_floatingip_v2.worker_floating_ip[i].address
        port    = 22
        user    = "root"
      }
    }]
  )
}
