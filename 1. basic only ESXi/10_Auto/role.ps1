
Write-Host "Connect ESXi" (Get-date) -ForegroundColor Green
$ESXiHost = "172.30.77.131"
$User = "root"
$PWord = 'Pa$$w0rd' | ConvertTo-SecureString -AsPlainText -Force

$Cred= New-Object System.Management.Automation.PSCredential -ArgumentList $User, $PWord

Connect-VIServer –Server $ESXiHost -Credential $Cred -Force

##########
##Create user
$PWuser = 'Pa$$w0rd' 
New-VMHostAccount -ID WSR -Password $PWuser -UserAccount
##Add Permission ESXi host Readonly
New-VIPermission -Role Readonly  -Principal "WSR" -Entity (Get-Folder -NoRecursion) 
##Create role Competitor allow System, Datastore, VirtualMachine
New-VIRole -Name CompetitorWSR -Privilege (Get-VIPrivilege -PrivilegeGroup)
##Add Permission to VM
$principal = get-VMHostAccount -id WSR
$role = Get-VIRole -Name "CompetitorWSR"
Get-VM -Name SRV, CLI, WEB-L, WEB-R, RTR-L,RTR-R, ISP | New-VIPermission -Role $role -Principal $principal -Propagate $false
