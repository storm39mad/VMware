
###IST to CLI vSW
resource "vsphere_host_virtual_switch" "vsw_isp_cli" {
  name           = "vsw_isp_cli"
  host_system_id = data.vsphere_host.host.id

  network_adapters = []

  active_nics  = []
  standby_nics = []

  allow_promiscuous      = true
  allow_forged_transmits = true
  allow_mac_changes      = true
}

###IST to CLI PG
resource "vsphere_host_port_group" "pg_isp_cli" {
  name                = "pg_isp_cli"
  host_system_id      = data.vsphere_host.host.id
  virtual_switch_name = vsphere_host_virtual_switch.vsw_isp_cli.name
}


###IST to RTR-L vSW
resource "vsphere_host_virtual_switch" "vsw_isp_rtrl" {
  name           = "vsw_isp_rtrl"
  host_system_id = data.vsphere_host.host.id

  network_adapters = []

  active_nics  = []
  standby_nics = []

  allow_promiscuous      = true
  allow_forged_transmits = true
  allow_mac_changes      = true
}
###IST to RTR-L PG
resource "vsphere_host_port_group" "pg_isp_rtrl" {
  name                = "pg_isp_rtrl"
  host_system_id      = data.vsphere_host.host.id
  virtual_switch_name = vsphere_host_virtual_switch.vsw_isp_rtrl.name
}

###IST to RTR-R vSW
resource "vsphere_host_virtual_switch" "vsw_isp_rtrr" {
  name           = "vsw_isp_rtrr"
  host_system_id = data.vsphere_host.host.id

  network_adapters = []

  active_nics  = []
  standby_nics = []

  allow_promiscuous      = true
  allow_forged_transmits = true
  allow_mac_changes      = true
}
###IST to RTR-R PG
resource "vsphere_host_port_group" "pg_isp_rtrr" {
  name                = "pg_isp_rtrr"
  host_system_id      = data.vsphere_host.host.id
  virtual_switch_name = vsphere_host_virtual_switch.vsw_isp_rtrr.name
}

###RTR-L vSW
resource "vsphere_host_virtual_switch" "vsw_rtrl" {
  name           = "vsw_rtrl"
  host_system_id = data.vsphere_host.host.id

  network_adapters = []

  active_nics  = []
  standby_nics = []

  allow_promiscuous      = true
  allow_forged_transmits = true
  allow_mac_changes      = true
}
###RTR-L PG
resource "vsphere_host_port_group" "pg_rtrl" {
  name                = "pg_rtrl"
  host_system_id      = data.vsphere_host.host.id
  virtual_switch_name = vsphere_host_virtual_switch.vsw_rtrl.name
}

###RTR-R vSW
resource "vsphere_host_virtual_switch" "vsw_rtrr" {
  name           = "vsw_rtrr"
  host_system_id = data.vsphere_host.host.id

  network_adapters = []

  active_nics  = []
  standby_nics = []

  allow_promiscuous      = true
  allow_forged_transmits = true
  allow_mac_changes      = true
}
###RTR-R PG
resource "vsphere_host_port_group" "pg_rtrr" {
  name                = "pg_rtrr"
  host_system_id      = data.vsphere_host.host.id
  virtual_switch_name = vsphere_host_virtual_switch.vsw_rtrr.name
}


