# Get-DContact

## Synopsis
Gets one or multiple contacts from Delegate365.

## Description
Get-DContact returns a list of contacts from Delegate365.
Contacts usually store external person's data in the Office 365 tenant.
Parameters allow to get all contacts or one specific contact. 
Filter for one contact by using the -Identity Parameter and the full name or the ID.
The output shows the most essential properties for each contact.

## Example
```powershell
Get-DContact
```
By default, the command returns the first 100 assigned contacts.

## Example
```powershell
Get-DContact -All
```
Add -All to get all contacts.

## Example
```powershell
Get-DContact -Unassigned -All
```
Add -Unassigned to get contacts that are NOT assigned to an OU (can be combined with -All).

## Example
```powershell
Get-DContact -OU Seattle
```
Add -OU to get contacts that are assigned to a specific OU.

## Example
```powershell
Get-DContact -Identity john.doe@outlook.com
```
Get one specific contact by name or by ID.

## Parameter Description
### Parameter -Unassigned
Delivers all contacts that are not assigned to an OU.
### Parameter -All
Delivers all contacts (and not only the first 100 items).
### Parameter -Identity
Filter for one specific contact. Wildcards are not supported, use the full name or the ID.
### Parameter -OU
Filter by the name of an OU.

Back to the [overview](https://github.com/delegate365/PowerShell).
