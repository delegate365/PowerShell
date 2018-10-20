<# 
Get-DUsageLocation-Sample.ps1
A sample script to work with the Delegate365 usage locations, see Get-DUsageLocation.
This script reads all existing UsageLocations that are stored in Delegate365 and loops through them for output.
#>

$ul = Get-DUsageLocation -All
foreach ($u in $ul)
{
    Write-Output $u.LocationName $u.LocationCode
}
