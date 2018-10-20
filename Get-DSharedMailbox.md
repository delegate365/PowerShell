# Get-DSharedMailbox

## Synopsis
Gets one or multiple shared mailboxes from Delegate365.

## Description
Get-DSharedMailbox returns a list of shared mailboxes from Delegate365.
Shared mailboxes can be used as mailbox for mutliple users.
Parameters allow to get all shared mailboxes or one specific shared mailbox. 
Filter for one shared mailbox by using the -Identity Parameter and the full name or the ID.
The output shows the most essential properties for each shared mailbox.

## Example
```powershell
Get-DSharedMailbox
```
By default, the command returns the first 100 assigned shared mailboxes.

## Example
```powershell
Get-DSharedMailbox -All
```
Add -All to get all shared mailboxes.

## Example
```powershell
Get-DSharedMailbox -Unassigned -All
```
Add -Unassigned to get shared mailboxes that are NOT assigned to an OU (can be combined with -All).

## Example
```powershell
Get-DSharedMailbox -OU Seattle
```
Add -OU to get shared mailboxes that are assigned to a specific OU.

## Example
```powershell
Get-DSharedMailbox -Identity support@delegate365.com
```
Get one specific shared mailbox by name or by ID.

## Parameter Description
### Parameter -Unassigned
Delivers all shared mailboxes that are not assigned to an OU.
### Parameter -All
Delivers all shared mailboxes (and not only the first 100 items).
### Parameter -Identity
Filter for one specific shared mailboxe. Wildcards are not supported, use the full name or the ID.
### Parameter -OU
Filter by the name of an OU.

Back to the [overview](https://github.com/delegate365/PowerShell).
