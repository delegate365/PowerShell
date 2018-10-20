# Get-DUsageLocation Sample

## Synopsis
A sample script to work with the Delegate365 usage locations.

## Description
[Get-DUsageLocation](Get-DUsageLocation.md) returns a list of usage locations from Delegate365.
This sample demonstrates how to work with the returned data.

## Example
```powershell
$ul = Get-DUsageLocation -All
foreach ($u in $ul)
{
    Write-Output $u.LocationName $u.LocationCode
}
```
This script reads all existing UsageLocations that are stored in Delegate365 and loops through them for output.
 
Back to the [overview](https://github.com/delegate365/PowerShell).
