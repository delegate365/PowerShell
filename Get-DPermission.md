# Get-DPermission

## Synopsis
Gets one or multiple permission policies from Delegate365.

## Description
Get-DPermission returns a list of permission policies from Delegate365.
Permission policies define what modules and permissions Delegate365 administrators get.
Parameters allow to get all permission policies or one specific permission policy. 
Filter for one permission policy by using the -Identity Parameter and the full name or the ID.
The output shows the properties for each permission policy.

## Example
```powershell
Get-DPermission
```
By default, the command returns the first 100 assigned permission policies.

## Example
```powershell
Get-DPermission -All
```
Add -All to get all permission policies.

## Example
```powershell
Get-DPermission -Identity 'Scope Admins New York'
```
Get one specific permission policy by name of the policy.

## Parameter Description
### Parameter -All
Delivers all permission policies that are not assigned to an OU.
### Parameter -Identity
Filter for one specific permission policy. Wildcards are not supported, use the full name or the ID.
 
Back to the [overview](https://github.com/delegate365/PowerShell).
