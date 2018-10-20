# New-DOrganzationalUnit

## Synopsis
Creates a new OU in Delegate365.

## Description
New-DOrganizationalUnit creates a new OU in Delegate365.
Organizational Units (OUs) are used as container to allow delegated management within Delegate365.
The output shows the created OU object. Once the OU has been created, it can be used for any assignments.

## Example
```powershell
New-DOrganizationalUnit -Name 'New York'
```
For creating a new OU, a name is required.

## Parameter Description
### Parameter -Name
The name of the new OU is required.

Back to the [overview](https://github.com/delegate365/PowerShell).
