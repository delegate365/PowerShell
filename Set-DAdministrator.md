# Set-DAdministrator

## Synopsis
Updates an existing administrator in Delegate365 (available from Delegate365 v8.2 and up). Delegate365 v9.2 allows to set the GroupOU´s additionally.

## Description
Set-DAdministrator modifies an existing administrator in Delegate365. Alias commands are: Set-DAdmin.
The administrator that shall be modified must be existing and must be set with the -Identity parameter.
This command allows to enable or disable an Administrator, to overwrite his OU and domain settings and to define other admin settings.
To remove any existing OU or domain assignments and the permission policy, use an empty string ''.
Otherwise, use a string array to define new OU's or domains, as in the sample below.
Optional, additional properties can be handed over to the command, see the example.
The output shows the updated admin object.

***Note: Existing values are overwritten if used here.***
So, if an admin has one OU 'Paris' assigned and you run _Set-DAdmin -Identity 'john.doe@delegate365.com' -OrganizationalUnits 'London', 'New York'_, that administrator will no longer be assigned to 'Paris'. Keep that in mind when using this command.

To delete an admin from Delegate365, see [Delete-DAdministrator](./Delete-DAdministrator.md).

## Example
```powershell
Set-DAdministrator -Identity 'john.doe@delegate365.com' -Active $false
```
This disables the administrator from using the Delegate365 portal or using Powershell. Use $true for activating that adminstrator.

## Example
```powershell
Set-DAdministrator -Identity 'john.doe@delegate365.com' -OrganizationalUnits ''
```
Remove all OU assignments from that administrator.

## Example
```powershell
Set-DAdministrator -Identity 'john.doe@delegate365.com' -Domains ''
```
Remove all domain assignments from that administrator.

## Example
```powershell
Set-DAdministrator -Identity 'john.doe@delegate365.com' -D365Permission ''
```
Remove the existing permission policy from that administrator. That user no longer will see any modules in Delegate365.

## Example
```powershell
Set-DAdministrator -Identity 'john.doe@delegate365.com' -OrganizationalUnits 'Paris', 'New York', 'Kuala Lumpur'
```
Overwrite any existing OU assignments with new ones for that administrator.

## Example
```powershell
$settings = New-Object Delegate365.Api.Core.Models.AdministratorSettings
$settings.Email = 'john.doe@delegate365.com'
$settings.Phone = ''
$settings.UsageLocation = 'US'
$settings.DailyNotifications = $false

Set-DAdministrator -Identity 'john.doe@delegate365.com' `
-OrganizationalUnits 'London', 'New York', 'Kuala Lumpur' `
-Domains 'atwork-it.com', 'delegate365.com' `
-D365Permission 'Scope Admin' `
-Settings $settings
```
Overwrite all possible settings of that admin.
You can assign multiple OUs and domains and separate them with a comma, as shown in this sample. Here, the new admin is assigned to the OU's 'London', 'New York' and 'Kuala Lumpur' and for managing users of the domains 'atwork-it.com' and 'delegate365.com'. As Permission policy, the name of the policy must be used, here 'Portal Admin'. Note: Without permission policy, the admin has no permissions in Delegate365, so this parameter is important. The defined settings are assigned by passing the $settings object to the New-DAdministrator command.

## Example
```powershell
Set-DAdministrator -Identity 'john.doe@delegate365.com' `
-OrganizationalUnits 'London', 'New York' `
-GroupOrganizationalUnits 'Kuala Lumpur', 'Paris'
```
Overwrite the OU assignment and the Group OU assignment of an existing administrator. The -GroupOrganizationalUnits parameter can be used starting with version Delegate365 v9.2 only. This allows to automate assigned Group OU´s as well. Again, pls. note that such OU assignments always overwrite existing assignments for the administrator.

## Example
See another sample for creating new administrators that works with almost the same syntax at [New-DAdministrator-Sample.ps1](./Samples/New-DAdministrator-Sample.ps1).

## Parameter Description
### Parameter -Identity
Identity is the login name of the new admin and is required.
### Parameter -UserPrincipalName
The UserPrincipalName can be used instead of the Identity parameter.
### Parameter -OrganizationalUnits
OrganizationalUnits can be a String Array, that can be separated by comma, e.g. 'Paris', 'New York'. Quoting is not necessary but common to avoid any conflicts when interpreting the data.
### Parameter -Domains
Domains can be a String Array, that can be separated by comma, e.g. 'atwork-it.com', 'delegate365.com'. Quoting is not necessary but common to avoid any conflicts when interpreting the data.
### Parameter -Settings
Settings allow to set the notification email, phone number and other settings for the admin.
### Parameter -D365Permission
Defines the permission policy to be assigned to that admin. Without permission policy, the admin has no permission in Delegate365.
### Parameter -Active
Active sets the Administrator active ($true) or disabled ($false). Disabled Admins cannot access the Delegate365 portal or use PowerShell. 

Back to the [overview](https://github.com/delegate365/PowerShell).
