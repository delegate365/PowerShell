# Get-DDistributionGroup

## Synopsis
Gets one or multiple distribution groups from Delegate365.

## Description
Get-DDistributionGroup returns a list of distribution groups from Delegate365.
Distribution groups (DG) allow to deliver emails to multiple users.
Parameters allow to get all distribution groups or one specific distribution group. 
Filter for one distribution group by using the -Identity Parameter and the full name or the ID.
The output shows the most essential properties for each distribution group.

## Example
```powershell
Get-DDistributionGroup
```
By default, the command returns the first 100 assigned distribution groups.

## Example
```powershell
Get-DDistributionGroup -All
```
Add -All to get all distribution groups.

## Example
```powershell
Get-DDistributionGroup -Unassigned -All
```
Add -Unassigned to get distribution groups that are NOT assigned to an OU (can be combined with -All).

## Example
```powershell
Get-DDistributionGroup -OU Seattle
```
Add -OU to get distribution groups that are assigned to a specific OU.

## Example
```powershell
Get-DDistributionGroup -Identity it-department@delegate365.com
```
Get one specific distribution group by name or by ID.

## Parameter Description
### Parameter -Unassigned
Delivers all distribution groups that are not assigned to an OU.
### Parameter -All
Delivers all distribution groups (and not only the first 100 items).
### Parameter -Identity
Filter for one specific distribution group. Wildcards are not supported, use the full name or the ID.
### Parameter -OU
Filter by the name of an OU.

Back to the [overview](https://github.com/delegate365/PowerShell).
