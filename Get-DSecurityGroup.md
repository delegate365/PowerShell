# Get-DSecurityGroup

## Synopsis
Gets one or multiple security groups from Delegate365.

## Description
Get-DSecurityGroup returns a list of security groups from Delegate365.
Security groups (SG) are an essential part in organizing users and can be used to automate OU and license assignments in Delegate365.
Parameters allow to get all security groups or one specific security group. 
Filter for one security group by using the -Identity Parameter and the full name or the ID.
The output shows the most essential properties for each security group.

## Example
```powershell
Get-DSecurityGroup
```
By default, the command returns the first 100 assigned security groups.

## Output
_WARNING: Result is limited to 100 items. Use the -All parameter to get all security groups._

| Id | Identity | GroupName | OrganizationalUnit |
| ---:|:-------- |:---------:|:------------------ |
| 1 | 8e511639-4e41-45e9-83e9-46a5c53a068a | sg-Engineering | Seattle |
| 2 | 0420e126-4078-41a1-9712-4087e9f2445d | sg-Executive | Seattle |
| 3 | d9ab3a91-da1c-4148-85bb-b1a696476194 | sg-Finance | Seattle |

## Example
```powershell
Get-DSecurityGroup -All
```
Add -All to get all security groups.

## Example
```powershell
Get-DSecurityGroup -Unassigned -All
```
Add -Unassigned to get security groups that are NOT assigned to an OU (can be combined with -All).

## Example
```powershell
Get-DSecurityGroup -OU Seattle
```
Add -OU to get security groups that are assigned to a specific OU.

## Example
```powershell
Get-DSecurityGroup -Identity 'Sales department'
```
Get one specific security group by name or by ID.

## Parameter Description
### Parameter -Unassigned
Delivers all security groups that are not assigned to an OU.
### Parameter -All
Delivers all security groups (and not only the first 100 items).
### Parameter -Identity
Filter for one specific security group. Wildcards are not supported, use the full name or the ID.
### Parameter -OU
Filter by the name of an OU.

Back to the [overview](https://github.com/delegate365/PowerShell).
