# Get-DOffice365Group

## Synopsis
Gets one or multiple Office 365 groups from Delegate365.

## Description
Get-DOffice365Group returns a list of Office 365 groups from Delegate365.
Office 365 groups (or Unified Groups) live in Azure Active Directory and allow collaboration over mutliple Office 365 services.
Parameters allow to get all Office 365 groups or one specific Office 365 group. 
Filter for one Office 365 group by using the -Identity Parameter and the full name or the ID.
The output shows the most essential properties for each Office 365 group.

## Example
```powershell
Get-DOffice365Group
```
By default, the command returns the first 100 assigned Office 365 groups.

## Example
```powershell
Get-DOffice365Group -All
```
Add -All to get all Office 365 groups.

## Example
```powershell
Get-DOffice365Group -Unassigned -All
```
Add -Unassigned to get Office 365 groups that are NOT assigned to an OU (can be combined with -All).

## Example
```powershell
Get-DOffice365Group -OU Seattle
```
Add -OU to get Office 365 groups that are assigned to a specific OU.

## Example
```powershell
Get-DOffice365Group -Identity project-tango@delegate365.com
```
Get one specific Office 365 group by name or by ID.

## Parameter Description
### Parameter -Unassigned
Delivers all Office 365 groups that are not assigned to an OU.
### Parameter -All
Delivers all Office 365 groups (and not only the first 100 items).
### Parameter -Identity
Filter for one specific Office 365 group. Wildcards are not supported, use the full name or the ID.
### Parameter -OU
Filter by the name of an OU.

Back to the [overview](https://github.com/delegate365/PowerShell).
