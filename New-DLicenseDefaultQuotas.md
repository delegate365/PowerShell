# New-DLicenseDefaultQuotas

## Synopsis
Creates license quotas for all OU's and licenses in Delegate365.

## Description
New-DLicenseDefaultQuotas creates license quotas for all OU's and licenses in Delegate365.
Licenses quotas allow to restrict the number of Office 365 licenses that can be consumed by users per OU. 
This command does not require any parameters and creates new quotas if not existing for each license and OU with a quota of 0.
Existing quotas stay untouched. This helps administrators just to modify a quota and not to create it manually.
It ensures that Admins from now on cannot use the Office 365 tenant's licenses if no quota is defined. 
In general, it is recommended in most organizational environments to use license quotas in Delegate365 to restrict the usage for Admins.
The output shows the created license quota object.

## Example
```powershell
New-DLicenseDefaultQuotas
```
For filling new license quotas for all OU's and licenses with a quota value of 0.
The created quotas and their values should then be modified as needed.

## Parameter Description
There are no parameters.

Back to the [overview](https://github.com/delegate365/PowerShell).
