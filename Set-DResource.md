# Set-DResource

## Synopsis
Assigns an existing resource to an OU in Delegate365.

## Description
Set-DResource assigns an existing resource to an OU in Delegate365.
An existing OU assignment is overwritten. If the resource is unassigned, it gets assigned.
As parameters, the Identity and the OU name must be provided. 
The output shows the resource object and an operation status.
For a successful operation, the Error property is False and the Message property is empty.

## Example
```powershell
Set-DResource -Identity ConfRoomCrystal@delegate365.com -OU Chicago
```
Assign a resource to an OU. The Identity must be provided by email address or by ID.

## Example
```powershell
Set-DResource -PrimarySmtpAddress ConfRoomCrystal@delegate365.com -OU Chicago
```
Alternatively, use the PrimarySmtpAddress parameter.

## Parameter Description
### Parameter -Identity
Find a specific item. Wildcards are not supported, use the email address or the ID.
### Parameter -PrimarySmtpAddress
The PrimarySmtpAddress can be used instead of the Identity parameter.
### Parameter -OU
Setting the OU name assigns the resource to that OU.

Back to the [overview](https://github.com/delegate365/PowerShell).
