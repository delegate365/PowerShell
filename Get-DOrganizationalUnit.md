# Get-DOrganizationalUnit

## Synopsis
Gets one or multiple OUs from Delegate365.

## Description
Get-DOrganizationalUnit returns a list of OUs from Delegate365.
Organizational Units (OUs) are used as container to allow delegated management within Delegate365.
Parameters allow to get all OUs or one specific OU. 
Filter for one OU by using the -Identity Parameter and the full name or the ID.
The output shows the ID and the name of each OU.

## Example
```powershell
Get-DOrganizationalUnit
```
By default, the command returns the first 100 assigned OUs.

## Example
```powershell
Get-DOrganizationalUnit -All
```
Add -All to get all OUs.

## Example
```powershell
Get-DOrganizationalUnit -Unassigned -All
```
Add -Unassigned to get OUs that are NOT assigned to an OU (can be combined with -All).

## Example
```powershell
Get-DOrganizationalUnit -Identity Seattle
```
Get one specific OU by name or by ID.

## Parameter Description
### Parameter -All
Delivers all OUs that are not assigned to an OU.
### Parameter -Identity
Filter for one specific OU. Wildcards are not supported, use the full name or the ID.
 
Back to the [overview](https://github.com/delegate365/PowerShell).
