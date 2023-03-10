

resource "vsphere_nas_datastore" "datastore" {
  name            = "NFS"
  host_system_ids = data.vsphere_host.host.*.id

  type         = "NFS"
  remote_hosts = ["172.16.0.20"]
  remote_path  = "/nfs39"
}