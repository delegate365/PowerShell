# Get-DResource

## Synopsis
Gets one or multiple resources from Delegate365.

## Description
Get-DResource returns a list of resources from Delegate365.
Mailbox of type 'resource' are used to store information about equipment and rooms.
Parameters allow to get all resources or one specific resource. 
Filter for one resource by using the -Identity Parameter and the full name or the ID.
The output shows the most essential properties for each resource.

## Example
```powershell
Get-DResource
```
By default, the command returns the first 100 assigned resources.

## Example
```powershell
Get-DResource -All
```
Add -All to get all resources.

## Example
```powershell
Get-DResource -Unassigned -All
```
Add -Unassigned to get resources that are NOT assigned to an OU (can be combined with -All).

## Example
```powershell
Get-DResource -OU Seattle
```
Add -OU to get resources that are assigned to a specific OU.

## Example
```powershell
Get-DResource -Identity ConfRoomCrystal@delegate365.com
```
Get one specific resource by name or by ID.

## Parameter Description
### Parameter -Unassigned
Delivers all resources that are not assigned to an OU.
### Parameter -All
Delivers all resources (and not only the first 100 items).
### Parameter -Identity
Filter for one specific resource. Wildcards are not supported, use the full name or the ID.
### Parameter -OU
Filter by the name of an OU.

Back to the [overview](https://github.com/delegate365/PowerShell).
