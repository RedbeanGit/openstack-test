resource "openstack_compute_instance_v2" "master" {
  count           = var.nb_master
  name            = "master-${count.index}"
  image_name      = var.image_name
  flavor_name     = var.flavor_name
  key_pair        = openstack_compute_keypair_v2.ssh_key_pair
  security_groups = [openstack_networking_secgroup_v2.security_group.name]

  network {
    uuid = openstack_networking_network_v2.private_net.id
  }
}

resource "openstack_compute_instance_v2" "worker" {
  count           = var.nb_worker
  name            = "worker-${count.index}"
  image_name      = var.image_name
  flavor_name     = var.flavor_name
  key_pair        = openstack_compute_keypair_v2.ssh_key_pair
  security_groups = [openstack_networking_secgroup_v2.security_group.name]

  network {
    uuid = openstack_networking_network_v2.private_net.id
  }
}
