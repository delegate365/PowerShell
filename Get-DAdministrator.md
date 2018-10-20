# Get-DAdministrator

## Synopsis
Gets one or multiple administrators from Delegate365.

## Description
Get-DAdministrator returns a list of administrators from Delegate365.
To use Delegate365, a user must be added as Administrator in the Administrator's list.
Permissions and assignments to OU's and to domains define the scope for an administrator.
Parameters allow to get all administrators or one specific administrator. 
Filter for one administrator by using the -Identity Parameter and the full UserPrincipalName or the ID.
The output shows assigned policies and settings for each admin.

## Example
```powershell
Get-DAdministrator
```
By default, the command returns the first 100 assigned admins.

## Example
```powershell
Get-DAdministrator -All
```
Add -All to get all admins.

## Example
```powershell
Get-DAdministrator -Identity john.doe@delegate365.com
```
Get one specific admin by UPN or by ID.

## Parameter Description
### Parameter -All
Delivers all items (and not only the first 100 items).
### Parameter -Identity
Filter for one specific item. Wildcards are not supported, use the full name or the ID.
 
Back to the [overview](https://github.com/delegate365/PowerShell).
