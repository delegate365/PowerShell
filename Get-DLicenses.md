# Get-DLicenses

## Synopsis
Gets one or multiple licenses from Delegate365.

## Description
Get-DLicenses returns a list of licenses from Delegate365.
Licenses (SKU's) are a set of license plans that can be assigned to a user to allow access to an Office 365 service.
Licenses are syncronized to Delegate365 from the Office 365 tenant and can be renamed within Delegate365 if needed.
Parameters allow to get all licenses or one specific license. 
Filter for one license by using the -Identity Parameter and the full name or the ID.
The output shows the existing licenses (SKU) in the Office 365 tenant.

## Example
```powershell
Get-DLicenses
```
By default, the command returns the first 100 available licenses in the tenant.

## Example
```powershell
Get-DLicenses -All
```
Add -All to get all licenses.

## Example
```powershell
Get-DLicenses -Identity 'Enterprise Mobility + Security E5'
```
Get one specific license by name or by ID.

## Parameter Description
### Parameter -All
Delivers all Licenses (and not only the first 100 items).
### Parameter -Identity
Filter for one specific Licenses. Wildcards are not supported, use the full name or the ID.
 
Back to the [overview](https://github.com/delegate365/PowerShell).
