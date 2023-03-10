
#####
provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server
  # If you have a self-signed cert
  allow_unverified_ssl = true
}

variable "vsphere_user" {
  type    = string
  default = "root"
}

variable "vsphere_password" {
  type    = string
  default = "Pa$$w0rd"
}

variable "vsphere_server" {
  type    = string
  default = "172.30.66.31"
}

data "vsphere_datacenter" "datacenter" {
  name = "ha-datacenter"
}


data "vsphere_host" "host" {
  name          = "localhost"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}


##### network tf
data "vsphere_network" "network_pg_Internet" {
  depends_on = [
    vsphere_host_port_group.pg_Internet
  ]
  name          = "pg_Internet"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network_pg_FW-R0-MSK" {
  depends_on = [
    vsphere_host_port_group.pg_FW-R0-MSK
  ]
  name          = "pg_FW-R0-MSK"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network_pg_LAN-MSK" {
  depends_on = [
    vsphere_host_port_group.pg_LAN-MSK
  ]
  name          = "pg_LAN-MSK"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network_pg_SRV-MSK" {
  depends_on = [
    vsphere_host_port_group.pg_SRV-MSK
  ]
  name          = "pg_SRV-MSK"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network_pg_DMZ-MSK" {
  depends_on = [
    vsphere_host_port_group.pg_DMZ-MSK
  ]
  name          = "pg_DMZ-MSK"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network_pg_LAN-AMS" {
  depends_on = [
    vsphere_host_port_group.pg_LAN-AMS
  ]
  name          = "pg_LAN-AMS"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network_pg_DMZ-AMS" {
  depends_on = [
    vsphere_host_port_group.pg_DMZ-AMS
  ]
  name          = "pg_DMZ-AMS"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network_pg_EKB-WAN" {
  depends_on = [
    vsphere_host_port_group.pg_EKB-WAN
  ]
  name          = "pg_EKB-WAN"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

#####
data "vsphere_resource_pool" "resource_pool" {
  name          = "Resources"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}


data "vsphere_network" "vm_network" {
  name          = "VM Network"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}


data "vsphere_datastore" "datastore" {
  depends_on = [
    vsphere_vmfs_datastore.datastore
  ]
  name          = "DATA"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}


data "vsphere_datastore" "nfs" {
  depends_on = [
    vsphere_vmfs_datastore.datastore
  ]
  name          = "NFS"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}