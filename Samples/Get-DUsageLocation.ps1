<# 
Get-DUsageLocation.ps1
A sample script to work with the Delegate365 usage locations, see Get-DUsageLocation.
This script reads all existing UsageLocations that are stored in Delegate365 and loops through them for output.
Use Connect-Delegate365 to connect to the Delegate365 API first, see 
https://github.com/delegate365/PowerShell/blob/master/Samples/Connect.ps1
#>

$ul = Get-DUsageLocation -All
foreach ($u in $ul)
{
    Write-Output $u.LocationName $u.LocationCode
}
