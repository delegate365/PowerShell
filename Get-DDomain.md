# Get-DDomain

## Synopsis
Gets one or multiple items of the domains in the tenant.

## Description
Get-DDomain returns a list of domains from Delegate365.
Domains that are added to the Office 365 tenant are updated during each sync in Delegate365. 
Admins can only see users and groups if they are entitled to use the domain.
Parameters allow to get all items or one specific item. 
The output shows the Id and the name of existing domains.

## Example
```powershell
Get-DDomain
```
By default, the command returns the first 100 assigned items.

## Example
```powershell
Get-DDomain -All
```
Add -All to get all items.

## Example
```powershell
Get-DDomain -Identity 'Switzerland'
```
Get one specific item by name or by ID.

## Parameter Description
### Parameter -All
Delivers all domains (and not only the first 100 items).
### Parameter -Identity
Filter for one specific domains. Wildcards are not supported, use the full name or the ID.
 
Back to the [overview](https://github.com/delegate365/PowerShell).
