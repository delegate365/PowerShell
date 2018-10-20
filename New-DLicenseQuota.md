# New-DLicenseQuota

## Synopsis
Creates a new license quota in Delegate365.

## Description
New-DLicenseQuota creates a new license quota in Delegate365.
Licenses quotas allow to restrict the number of Office 365 licenses that can be consumed by users per OU. 
The Quota parameter requires an object representing the desired values to be set, see the example. 
The output shows the created license quota object.

## Example
```powershell
$quota = New-Object Delegate365.Api.Core.Models.LicenseQuota

$quota.OrganizationalUnit = 'Seattle'
$quota.SkuDisplayName = 'SkuDisplayName'
$quota.Quota = 10
$quota.Enforce = $true

New-DLicenseQuota -Quota $quota
```
For creating a new license quotas, create a new object and assign that to the new quota.

## Parameter Description
### Parameter -Quota
Quota is the object representing the desired values to be set.

Back to the [overview](https://github.com/delegate365/PowerShell).
