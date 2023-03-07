# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    vsphere = {
      source = "hashicorp/vsphere"
      version = "2.1.1"
    }
  }
}


variable "vsphere_user" {
  type = string
  default = "rukavishnikov"
}

variable "vsphere_password" {
  type = string
  default = "enotokolokompa"
}

variable "vsphere_server" {
  type = string
  default = "172.30.77.111"
}


provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server

  # If you have a self-signed cert
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "datacenter" {
  name = "DatacenterDELLAllFlash"
}

data "vsphere_datastore" "datastore" {
  name          = "vsanDatastore"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_compute_cluster" "cluster" {
  name          = "ClusterDELLAllFlash"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network" {
  name          = "DPortGroup666"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}


data "vsphere_virtual_machine" "template" {
  name          = "cmltestTM2ovf"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
data "vsphere_resource_pool" "default" {
  name          = "cmmmmmmmmml"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
