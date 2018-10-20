# Get-DUser

## Synopsis
Gets one or multiple users from Delegate365.

## Description
Get-DUser returns a list of users from Delegate365.
In Delegate365, users can be managed by Scope Admins if they are assigned to an OU.
Parameters allow to get all users, users of a specific OU, or unassigned users.
By default, the first 100 users are returned. Use the -All parameter to get the full list of users. 
Filter for one user by using the -Identity Parameter and the full UserPrincipalName or the ObjectID.
The ouput delivers the most essential user properties: the Id in the Delegate365 database, the Identity is the AAD ObjectID, 
the UserPrincipalName, the DisplayName and the OU assignment.

## Example
```powershell
Get-DUser
```
By default, the command returns the first 100 assigned users.

## Example
```powershell
Get-DUser -All
```
Add -All to get all users.

## Example
```powershell
Get-DUser -Unassigned -All
```
Add -Unassigned to get users that are NOT assigned to an OU (can be combined with -All).

## Example
```powershell
Get-DUser -OU Seattle
```
Add -OU to get users that are assigned to a specific OU.

## Example
```powershell
Get-DUser -Identity john.doe@delegate365.com
```
Get one specific user by UPN or by ID.

## Parameter Description
### Parameter -Unassigned
Delivers all users from Delegate365 that are not assigned to an OU.
### Parameter -All
Delivers all users (and not only the first 100 users).
### Parameter -Identity
Filter for one specific user. Wildcards are not supported, use the full UserPrincipalName or the ID.
### Parameter -OU
Filter by the name of an OU.

Back to the [overview](https://github.com/delegate365/PowerShell).
