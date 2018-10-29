# Get-DLicenses

## Synopsis
Gets one or multiple licenses from Delegate365.

## Description
Get-DLicenses returns a list of licenses from Delegate365.
Licenses (SKU's) are a set of license plans that can be assigned to a user to allow access to an Office 365 service.
Licenses are syncronized to Delegate365 from the Office 365 tenant and can be renamed within Delegate365 if needed.
Parameters allow to get all licenses or one specific license. 
Filter for one license by using the -Identity Parameter and the full name or the ID.
The output shows the existing licenses (SKU) in the Office 365 tenant.

## Example
```powershell
Get-DLicenses | ft
```
By default, the command returns the first 100 available licenses in the tenant.

## Output
_WARNING: Result is limited to 100 items. Use the -All parameter to get all licenses._

| Id | Identity | Name | TotalLicenses | FreeLicenses | IsSkuAvailableForLicenseAssignment | Plans
|:---|:-------- |:---- |:-------------:|:------------:|:----------------------------------:|:-----
| b05e124f-c7cc-45a0-a6aa-8cf78c946968 | b05e124f-c7cc-45a0-a6aa-8cf78c946968 | Enterprise Mobility + Security E5 | 100 | 8 | True | {EXCHANGE_S_FOUNDATION, ATA, Microsoft Cloud App S...
| c7df2760-2c81-4ef7-b578-5b5392b571df | c7df2760-2c81-4ef7-b578-5b5392b571df | OFFICE 365 ENTERPRISE E5 | 25 | 2 | True | {PAM_ENTERPRISE, To-Do (Plan3), Microsoft Forms (P...
| 6fd2c87f-b296-42f0-b197-1e91e994b900 | 6fd2c87f-b296-42f0-b197-1e91e994b900 | Office 365 Enterprise E3 | 25 | 16 | True | {To-Do (Plan 2), Microsoft Forms (Plan E3), Stream...

## Example
```powershell
Get-DLicenses -All
```
Add -All to get all licenses.

## Example
```powershell
Get-DLicenses -Identity [SKU-ID]
```
Get one specific license by ID.

## Parameter Description
### Parameter -All
Delivers all Licenses (and not only the first 100 items).
### Parameter -Identity
Filter for one specific Licenses. Wildcards are not supported, use the full name or the ID.
 
Back to the [overview](https://github.com/delegate365/PowerShell).
