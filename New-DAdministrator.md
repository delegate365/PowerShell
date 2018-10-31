# New-DAdministrator

## Synopsis
Creates a new administrator in Delegate365 (and optional assigns the administrator to OU's, domains and to a permission policy).

## Description
New-DAdministrator creates a new administrator in Delegate365.
To use Delegate365, a user must be added as Administrator in the Administrator's list.
Permissions and assignments to OU's and to domains define the scope for an administrator.
Administrators can be users in the same Office 365 tenant, or can be external users with an Office 365 work account.
Optional, additional properties can be handed over to the command, see the example.
The output shows the created admin object.

## Example
```powershell
New-DAdministrator -UserPrincipalName 'john.doe@delegate365.com'
```
For creating a new admin, a UPN is required.

## Example
```powershell
$settings = New-Object Delegate365.Api.Core.Models.AdministratorSettings
$settings.Email = 'john.doe@delegate365.com'
$settings.Phone = ''
$settings.UsageLocation = 'US'
$settings.DailyNotifications = $false

New-DAdministrator -UserPrincipalName 'john.doe@delegate365.com' `
-OrganizationalUnits 'Paris,New York' `
-Domains 'atwork-it.com,delegate365.com' `
-D365Permission 'Portal Admin' `
-Settings $settings
```
Additional parameters and settings can be set to the new user in one step. 
You can assign multiple OUs and domains and separate them with a comma, as shown in this sample. Here, the new admin is assigned to the OU's New York and Paris and for managing users of the domains atwork-it.com and delegate365.com. As Permission policy, the name of the policy must be used, here 'Portal Admin'. Note: Without permission policy, the admin has no permissions in Delegate365, so this parameter is important. The defined settings are assigned by passing the $settings object to the New-DAdministrator command.

## Parameter Description
### Parameter -UserPrincipalName
UserPrincipalName is the login name of the new admin and is required.
### Parameter -OrganizationalUnits
OrganizationalUnits is a string, that can be separated by comma, e.g. 'Paris,New York'.
### Parameter -Domains
Domains is a string, that can be separated by comma, e.g. 'atwork-it.com,delegate365.com'.
### Parameter -Settings
Settings allow to set the notification email, phone number and other settings for the admin.
### Parameter -D365Permission
Defines the permission policy to be assigned to that admin. Without permission policy, the admin has no permission in Delegate365.

Back to the [overview](https://github.com/delegate365/PowerShell).
