# Get-DAADUser

## Synopsis
Gets one or multiple users from Azure Active Directory.

## Description
Get-DAADUser returns a list of users from Azure Active Directory.
This command allows to directly query the AAD, without any filtering. Therefore, the runtime can be longer than other cmdlets that deliver data from Delegate365.
Parameters allow to get all users or a specific user.
By default, the first 100 users are returned. Use the -All parameter to get the full list of users. 
Filter for one user by using the -Identity Parameter and the full UserPrincipalName or the ID.
The ouput delivers all user properties from AAD.

## Example
```powershell
Get-DAADUser
```
By default, the command returns the first 100 assigned users.

## Example
```powershell
Get-DAADUser -All
```
Add -All to get all users.

## Example
```powershell
Get-DAADUser -Unassigned -All
```
Add -Unassigned to get users that are NOT assigned to an OU (can be combined with -All).

## Example
```powershell
Get-DAADUser -OU Seattle
```
Add -OU to get users that are assigned to a specific OU.

## Example
```powershell
Get-DAADUser -Identity john.doe@delegate365.com
```
Get one specific user by UPN or by ID,

## Parameter Description
### Parameter -Unassigned
Delivers all users from AAD that are not assigned to an OU.
### Parameter -All
Delivers all users (and not only the first 100 users).
### Parameter -Identity
Filter for one specific user. Wildcards are not supported, use the full UserPrincipalName or the ID.
### Parameter -OU
Filter by the name of an OU.

Back to the [overview](/)
