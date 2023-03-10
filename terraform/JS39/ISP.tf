resource "vsphere_virtual_machine" "ISP" {

  name             = "ISP"
  resource_pool_id = data.vsphere_resource_pool.resource_pool.id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = 2
  memory   = 2048
  guest_id = "other4xLinux64Guest"
  firmware = "efi"

  cpu_performance_counters_enabled = false
  cpu_hot_add_enabled              = false
  memory_hot_add_enabled           = false

  network_interface {

    network_id = data.vsphere_network.network_pg_Internet.id
  }

  network_interface {

    network_id = data.vsphere_network.network_pg_EKB-WAN.id
  }

  network_interface {
    network_id = data.vsphere_network.vm_network.id
  }



  disk {
    label = "disk0"
    size  = 25
  }
  cdrom {
    datastore_id = data.vsphere_datastore.nfs.id
    path         = "mikrotik-7.8.iso"

  }
  ####
  wait_for_guest_ip_timeout  = -1
  wait_for_guest_net_timeout = -1

}