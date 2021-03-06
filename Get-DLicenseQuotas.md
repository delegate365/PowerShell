# Get-DLicenseQuotas

## Synopsis
Gets one or multiple licenses quotas from Delegate365.

## Description
Get-DLicenseQuotas returns a list of licenses quotas from Delegate365.
Licenses quotas allow to restrict the number of Office 365 licenses that can be consumed by users per OU.
This command lists the license quota for an OU.

## Example
```powershell
Get-DLicenseQuotas
```
By default, the command returns the first 100 assigned licenses quotas.

## Example
```powershell
Get-DLicenseQuotas -All
```
Add -All to get all licenses quotas.

## Example
```powershell
Get-DLicenseQuotas -OU Seattle
```
Add -OU to get licenses quotas that are assigned to a specific OU.

## Example
```powershell
Get-DLicenseQuotas -Identity [SKU-ID]
```
Get one specific license quotas by by a license ID. You can get the license SKUID with [Get-DLicenses](Get-DLicenses.md).

## Parameter Description
### Parameter -All
Delivers all Licenses quota (and not only the first 100 items).
### Parameter -OU
Filter by the name of an OU.
### Parameter -Identity
Filter for one specific Licenses quota. Wildcards are not supported, use the full name or the ID.
 
Back to the [overview](https://github.com/delegate365/PowerShell).
