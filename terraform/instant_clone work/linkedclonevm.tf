resource "vsphere_virtual_machine" "vm" {
  name             = "linked_clone-cml3"
  resource_pool_id     = data.vsphere_resource_pool.default.id
  datastore_id     = data.vsphere_datastore.datastore.id
  num_cpus         = 4
  memory           = 8192
  guest_id         = data.vsphere_virtual_machine.template.guest_id
  scsi_type        = data.vsphere_virtual_machine.template.scsi_type
  firmware = "efi"
  efi_secure_boot_enabled = data.vsphere_virtual_machine.template.efi_secure_boot_enabled

   wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout  = 0

  network_interface {
    network_id = data.vsphere_network.network.id
    adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0]
  }

 disk {
        label            = "disk0"
        size             = data.vsphere_virtual_machine.template.disks.0.size
        eagerly_scrub    = data.vsphere_virtual_machine.template.disks.0.eagerly_scrub
        thin_provisioned = data.vsphere_virtual_machine.template.disks.0.thin_provisioned
    }
    clone {
    linked_clone = true
    template_uuid = data.vsphere_virtual_machine.template.id
  }
}
