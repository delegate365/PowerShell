# Get-DDynamicGroup

## Synopsis
Gets one or multiple dynamic groups from Delegate365.

## Description
Get-DDynamicGroup returns a list of dynamic groups from Delegate365.
Dynamic groups allow to specify rules for adding members dynamically based on user properties.
Parameters allow to get all dynamic groups or one specific dynamic group. 
Filter for one dynamic group by using the -Identity Parameter and the full name or the ID.
The output shows the most essential properties for each dynamic group.

## Example
```powershell
Get-DDynamicGroup
```
By default, the command returns the first 100 assigned dynamic groups.

## Example
```powershell
Get-DDynamicGroup -All
```
Add -All to get all dynamic groups.

## Example
```powershell
Get-DDynamicGroup -Unassigned -All
```
Add -Unassigned to get dynamic groups that are NOT assigned to an OU (can be combined with -All).

## Example
```powershell
Get-DDynamicGroup -OU Seattle
```
Add -OU to get dynamic groups that are assigned to a specific OU.

## Example
```powershell
Get-DDynamicGroup -Identity hr-department@delegate365.com
```
Get one specific dynamic group by name or by ID.

## Parameter Description
### Parameter -Unassigned
Delivers all dynamic groups that are not assigned to an OU.
### Parameter -All
Delivers all dynamic groups (and not only the first 100 items).
### Parameter -Identity
Filter for one specific dynamic group. Wildcards are not supported, use the full name or the ID.
### Parameter -OU
Filter by the name of an OU.

Back to the [overview](https://github.com/delegate365/PowerShell).
