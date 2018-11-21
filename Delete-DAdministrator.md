# Delete-DAdministrator

## Synopsis
Delete an existing administrator from Delegate365. ***This command is available from version Delegate365 v8.2***

## Description
Delete-DAdministrator removes a specific administrator from the Delegate365. 
Alias commands are: Delete-DAdmin, Remove-DAdmin.
The user object itself stays untouched, just he or she gets removed from them Delegate365 Administrator's list. When deleted, that user no longer has access to the Delegate365 portal. There is no Undo function.
In case that user shall get access again, he or she must be created, e.g. with the New-DAdministrator cmdlet. The Delegate365 Audit Logs stay unchanged and Portal Admins can see all logged actions of that user from the past. To remove any user data from the Audit logs, use the GDPR function in Delegate365.
The output shows "Successfully deleted", or "Administrator not found" if the user is not existing in the Administrator's list or the error message if another error was thrown.

To modify an admin from Delegate365, see [Set-DAdministrator](./Set-DAdministrator.md).

## Example
```powershell
Delete-DAdministrator -Identity john.doe@delegate365.com
```
Deletes the administrator from the Delegate365 administrator list.

## Example
```powershell
Delete-DAdministrator -UserPrincipalName john.doe@delegate365.com
```
Alternatively, the parameter -UserPrincipalName can be used instead of the -Identity parameter.

## Parameter Description
### Parameter -Identity
Identity is the login name of the new admin and is required.
### Parameter -UserPrincipalName
The UserPrincipalName can be used instead of the Identity parameter.

Back to the [overview](https://github.com/delegate365/PowerShell).
