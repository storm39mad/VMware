###vSW Internet
resource "vsphere_host_virtual_switch" "vsw_Internet" {
  name           = "Internet"
  host_system_id = data.vsphere_host.host.id

  network_adapters = []

  active_nics  = []
  standby_nics = []

  allow_promiscuous      = true
  allow_forged_transmits = true
  allow_mac_changes      = true
}

###Internet PG
resource "vsphere_host_port_group" "pg_Internet" {
  name                = "pg_Internet"
  host_system_id      = data.vsphere_host.host.id
  virtual_switch_name = vsphere_host_virtual_switch.vsw_Internet.name
}

###vSW FW-R0-MSK
resource "vsphere_host_virtual_switch" "vsw_FW-R0-MSK" {
  name           = "FW-R0-MSK"
  host_system_id = data.vsphere_host.host.id

  network_adapters = []

  active_nics  = []
  standby_nics = []

  allow_promiscuous      = true
  allow_forged_transmits = true
  allow_mac_changes      = true
}

###FW-R0-MSK PG
resource "vsphere_host_port_group" "pg_FW-R0-MSK" {
  name                = "pg_FW-R0-MSK"
  host_system_id      = data.vsphere_host.host.id
  virtual_switch_name = vsphere_host_virtual_switch.vsw_FW-R0-MSK.name
}

###vSW LAN-MSK
resource "vsphere_host_virtual_switch" "vsw_LAN-MSK" {
  name           = "LAN-MSK"
  host_system_id = data.vsphere_host.host.id

  network_adapters = []

  active_nics  = []
  standby_nics = []

  allow_promiscuous      = true
  allow_forged_transmits = true
  allow_mac_changes      = true
}

###LAN-MSK PG
resource "vsphere_host_port_group" "pg_LAN-MSK" {
  name                = "pg_LAN-MSK"
  host_system_id      = data.vsphere_host.host.id
  virtual_switch_name = vsphere_host_virtual_switch.vsw_LAN-MSK.name
}

###vSW SRV-MSK
resource "vsphere_host_virtual_switch" "vsw_SRV-MSK" {
  name           = "SRV-MSK"
  host_system_id = data.vsphere_host.host.id

  network_adapters = []

  active_nics  = []
  standby_nics = []

  allow_promiscuous      = true
  allow_forged_transmits = true
  allow_mac_changes      = true
}

###SRV-MSK PG
resource "vsphere_host_port_group" "pg_SRV-MSK" {
  name                = "pg_SRV-MSK"
  host_system_id      = data.vsphere_host.host.id
  virtual_switch_name = vsphere_host_virtual_switch.vsw_SRV-MSK.name
}

###vSW DMZ-MSK
resource "vsphere_host_virtual_switch" "vsw_DMZ-MSK" {
  name           = "DMZ-MSK"
  host_system_id = data.vsphere_host.host.id

  network_adapters = []

  active_nics  = []
  standby_nics = []

  allow_promiscuous      = true
  allow_forged_transmits = true
  allow_mac_changes      = true
}

###DMZ-MSK PG
resource "vsphere_host_port_group" "pg_DMZ-MSK" {
  name                = "pg_DMZ-MSK"
  host_system_id      = data.vsphere_host.host.id
  virtual_switch_name = vsphere_host_virtual_switch.vsw_DMZ-MSK.name
}

###vSW LAN-AMS
resource "vsphere_host_virtual_switch" "vsw_LAN-AMS" {
  name           = "LAN-AMS"
  host_system_id = data.vsphere_host.host.id

  network_adapters = []

  active_nics  = []
  standby_nics = []

  allow_promiscuous      = true
  allow_forged_transmits = true
  allow_mac_changes      = true
}

###LAN-AMS PG
resource "vsphere_host_port_group" "pg_LAN-AMS" {
  name                = "pg_LAN-AMS"
  host_system_id      = data.vsphere_host.host.id
  virtual_switch_name = vsphere_host_virtual_switch.vsw_LAN-AMS.name
}

###vSW DMZ-AMS
resource "vsphere_host_virtual_switch" "vsw_DMZ-AMS" {
  name           = "DMZ-AMS"
  host_system_id = data.vsphere_host.host.id

  network_adapters = []

  active_nics  = []
  standby_nics = []

  allow_promiscuous      = true
  allow_forged_transmits = true
  allow_mac_changes      = true
}

###DMZ-AMS PG
resource "vsphere_host_port_group" "pg_DMZ-AMS" {
  name                = "pg_DMZ-AMS"
  host_system_id      = data.vsphere_host.host.id
  virtual_switch_name = vsphere_host_virtual_switch.vsw_DMZ-AMS.name
}

###vSW EKB-WAN
resource "vsphere_host_virtual_switch" "vsw_EKB-WAN" {
  name           = "EKB-WAN"
  host_system_id = data.vsphere_host.host.id

  network_adapters = []

  active_nics  = []
  standby_nics = []

  allow_promiscuous      = true
  allow_forged_transmits = true
  allow_mac_changes      = true
}

###EKB-WAN PG
resource "vsphere_host_port_group" "pg_EKB-WAN" {
  name                = "pg_EKB-WAN"
  host_system_id      = data.vsphere_host.host.id
  virtual_switch_name = vsphere_host_virtual_switch.vsw_EKB-WAN.name
}