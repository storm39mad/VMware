
#####
provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server
  version        = "1.15.0"
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
  default = "172.30.77.131"
}

data "vsphere_datacenter" "datacenter" {
  name = "ha-datacenter"
}


data "vsphere_host" "host" {
  name          = "localhost"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

#####
data "vsphere_datastore" "datastore" {
  name          = "DATA"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

#####
data "vsphere_resource_pool" "resource_pool" {
  name          = "Resources"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

##### network tf
data "vsphere_network" "network_pg_rtrl" {
  depends_on = [
    vsphere_host_port_group.pg_rtrl
  ]
  name          = "pg_rtrl"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}


data "vsphere_network" "network_pg_rtrr" {
  depends_on = [
    vsphere_host_port_group.pg_rtrr
  ]
  name          = "pg_rtrr"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}


data "vsphere_network" "network_pg_isp_rtrl" {
  depends_on = [
    vsphere_host_port_group.pg_isp_rtrl
  ]
  name          = "pg_isp_rtrl"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network_pg_isp_rtrr" {
  depends_on = [
    vsphere_host_port_group.pg_isp_rtrr
  ]
  name          = "pg_isp_rtrr"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}


data "vsphere_network" "network_pg_isp_cli" {
  depends_on = [
    vsphere_host_port_group.pg_isp_cli
  ]
  name          = "pg_isp_cli"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

resource "null_resource" "PowerShellScriptRunAlways" {
depends_on = [
  vsphere_virtual_machine.ISP,
  vsphere_virtual_machine.CLI,
  vsphere_virtual_machine.RTR-L,
  vsphere_virtual_machine.RTR-R,
  vsphere_virtual_machine.SRV,
  vsphere_virtual_machine.WEB-L,
  vsphere_virtual_machine.WEB-R

]
  provisioner "local-exec" {
   
        
         command  = "D:\\VMware\\VMware\\10_Auto\\role.ps1"
        interpreter = ["PowerShell"]

  }
}