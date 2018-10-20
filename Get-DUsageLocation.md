# Get-DUsageLocation

## Synopsis
Gets one or multiple items of the usage locations.

## Description
Get-DUsageLocation returns a list of usage locations from Delegate365.
Usage locations are required to set an Office 365 license to a user and can be managed in Delegate365.
Parameters allow to get all items or one specific item. 
The output shows the Id and the name of existing usage locations.

## Example
```powershell
Get-DUsageLocation
```
By default, the command returns the first 100 assigned items.

## Example
```powershell
Get-DUsageLocation -All
```
Add -All to get all items.

## Example
```powershell
Get-DUsageLocation -Identity 'Switzerland'
```
Get one specific item by name or by ID.

## Parameter Description
### Parameter -All
Delivers all items (and not only the first 100 items).
### Parameter -Identity
Filter for one specific item. Wildcards are not supported, use the full name or the ID.
 
Back to the [overview](https://github.com/delegate365/PowerShell).
