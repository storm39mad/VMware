
data "vsphere_vmfs_disks" "available" {
  host_system_id = data.vsphere_host.host.id
  rescan         = true
  filter         = "mpx.vmhba0:C0:T1:L0"
}
resource "vsphere_vmfs_datastore" "datastore" {
  name           = "DATA"
  host_system_id = data.vsphere_host.host.id


  disks = data.vsphere_vmfs_disks.available.disks
}