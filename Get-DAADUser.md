# Get-DAADUser

## Synopsis
Gets one or multiple users from Azure Active Directory.

## Description
Get-DAADUser returns a list of users or a specific user from Azure Active Directory.

***Important:*** By default, the command shows all users that are assigned to any OU in Delegate365. 
When using the -Unassigned parameter, all users are returned that are not assigned to an OU. Be aware that this parameter only delivers the unassigned users if the authenticated user is PowerShell Administrator. Scope Admins that are not PowerShell Administrator will see no output (an empty list), while PowerShell Administrators get all the unassigned users.

This command allows to directly query the AAD, without any filtering for users that arealready synced to Delegate365. Therefore, the runtime can be longer than other cmdlets that deliver data from Delegate365.
By default, the first 100 users are returned. Use the -All parameter to get the full list of users. 
Filter for one user by using the -Identity Parameter and the full UserPrincipalName or the ID.
The ouput delivers all user properties from AAD.
See the Get-DUser(.\Get-DUser.md) command as alternative.

## Example
```powershell
Get-DAADUser
```
By default, the command returns the first 100 assigned users.

## Example
```powershell
Get-DAADUser -All
```
Add -All to get all users.

## Example
```powershell
Get-DAADUser -Unassigned -All
```
Add -Unassigned to get users that are NOT assigned to an OU (can be combined with -All). Requires the PowerShell Administration permission.

## Example
```powershell
Get-DAADUser -OU 'New York' | ft
```
Add -OU to get users that are assigned to a specific OU. There can only be one OU name used.

## Example
```powershell
Get-DAADUser -Identity john.doe@delegate365.com
```
Get one specific user by UPN or by ID.

## Parameter Description
### Parameter -Unassigned
Delivers all users from AAD that are not assigned to an OU. The PowerShell Administration permission is required for delivering an output.
### Parameter -All
Delivers all users (and not only the first 100 users).
### Parameter -Identity
Filter for one specific user. Wildcards are not supported, use the full UserPrincipalName or the ID.
### Parameter -OU
Filter by the name of an OU.

## Output
The Output delivers the whole user object:
```powershell
Id                                    : a9876543-b321-c234-d678-e11234567890
Identity                              : a9876543-b321-c234-d678-e11234567890
LicenseDetails                        :
OwnedObjects                          :
CreatedObjects                        :
MemberOf                              :
DirectReports                         :
Manager                               :
Extensions                            :
RegisteredDevices                     :
DeviceEnrollmentLimit                 :
Skills                                : {}
Schools                               : {}
Responsibilities                      : {}
PreferredName                         :
PastProjects                          : {}
OwnedDevices                          :
Messages                              :
MailFolders                           :
Calendar                              :
ManagedDevices                        :
Onenote                               :
Planner                               :
Drives                                :
Drive                                 :
Photos                                :
Photo                                 :
InferenceClassification               :
ContactFolders                        :
Contacts                              :
People                                :
Events                                :
CalendarView                          :
CalendarGroups                        :
Calendars                             :
MySite                                :
Interests                             : {}
HireDate                              :
Birthday                              :
MobilePhone                           : +1 425 555 0100
MailNickname                          : SilviaM
Mail                                  :
JobTitle                              : Salesperson
ImAddresses                           : {}
GivenName                             : Silvia
DisplayName                           : Silvia Milani
Department                            :
Country                               : United States
CompanyName                           :
City                                  : Redmond
BusinessPhones                        : {+1 425 555 0100}
AssignedPlans                         : {2e2ddb96-6af9-4b1d-a3f0-d6ecfd22edb2, 8a256a2b-b617-496d-b51b-e76466e88db0,...}
AssignedLicenses                      : {}
AccountEnabled                        : True
OnPremisesImmutableId                 :
ManagedAppRegistrations               :
OnPremisesLastSyncDateTime            :
OnPremisesSyncEnabled                 :
AboutMe                               :
MailboxSettings                       :
UserType                              :
UserPrincipalName                     : SilviaM@M365x737430.onmicrosoft.com
UsageLocation                         : US
Surname                               : Milani
StreetAddress                         : One Microsoft Way
State                                 : WA
ProxyAddresses                        : {}
ProvisionedPlans                      : {}
PreferredLanguage                     :
PostalCode                            : 98052
OfficeLocation                        :
PasswordProfile                       :
PasswordPolicies                      :
OnPremisesSecurityIdentifier          :
DeviceManagementTroubleshootingEvents :
```

Back to the [overview](https://github.com/delegate365/PowerShell).
