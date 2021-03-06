# Set-DContact

## Synopsis
Assigns an existing contact to an OU in Delegate365.

## Description
Set-DContact assigns an existing contact to an OU in Delegate365.
An existing OU assignment is overwritten. If the contact is unassigned, he gets assigned.
As parameters, the Identity (or the WindowsEmailAddress which is the same address) and the OU name must be provided. 
The output shows the contact object and an operation status.
For a successful operation, the Error property is False and the Message property is empty.

## Example
```powershell
Set-DContact -Identity bobk@tailspintoys.com -OU Chicago
```
Assign a contact to an OU. The Identity must be provided by email address or by ID.

## Example
```powershell
Set-DContact -WindowsEmailAddress bobk@tailspintoys.com -OU Chicago
```
Alternatively, use the WindowsEmailAddress parameter.

## Parameter Description
### Parameter -Identity
Find a specific item. Wildcards are not supported, use the email address or the ID.
### Parameter -WindowsEmailAddress
The WindowsEmailAddress can be used instead of the Identity parameter.
### Parameter -OU
Setting the OU name assigns the contact to that OU.

Back to the [overview](https://github.com/delegate365/PowerShell).
