# Set-DUser

## Synopsis
Assigns an existing user to an OU in Delegate365.

## Description
Set-DUser assigns an existing user to an OU in Delegate365.
An existing OU assignment is overwritten. If the user is unassigned, he gets assigned.
As parameters, the Identity and the OU name must be provided. 
The output shows the user object and an operation status.
For a successful operation, the Error property is False and the Message property is empty.

## Example
```powershell
Set-DUser -Identity support@delegate365.com -OU Chicago
```
Assign a user to an OU. The Identity must be provided by UserPrincipalName or by ID.

## Example
```powershell
Set-DUser -UserPrincipalName support@delegate365.com -OU Chicago
```
Alternatively, use the UserPrincipalName parameter.

## Parameter Description
### Parameter -Identity
Find a specific item. Wildcards are not supported, use the email address or the ID.
### Parameter -UserPrincipalName
The UserPrincipalName can be used instead of the Identity parameter.
### Parameter -OU
Setting the OU name assigns the user to that OU.

Back to the [overview](https://github.com/delegate365/PowerShell).
