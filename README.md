# Delegate365 PowerShell
PowerShell cmdlets and info for Delegate365.

Important: These cmdlets are available starting with Delegate365 v8.1.

## SYNOPSIS
Delegate365 is an Add-On solution running in Microsoft Azure as SaaS solution for managing an Office 365 tenant offered by [atwork-it.com](https://www.atwork-it.com/). Delegate365 allows to split a single Office 365 tenant into smaller, manageable units. For more information about Delegate365, pls. see [delegate365.com](https://www.delegate365.com/).

Delegate365 provides APIs and a PowerShell module to access data that is stored within the Delegate365 system.
These cmdlets allow to read and write data from external systems into Delegate365.

## DESCRIPTION
The Delegate365 module must be downloaded and installed from the [PowerShell Gallery](https://powershellgallery.com/packages/Delegate365/). The Delegate365 module can be used on any platform supporting the .NET standard 2.0 library. Once installed on a client machine, use the [Connect-Delegate365](Connect-Delegate365.md) command to connect to your Delegate365 instance and use the cmdlets afterwards. [Disconnect-Delegate365](Disconnect-Delegate365.md) closes the connection.

## BASIC USAGE
```
Import-Module Delegate365

$baseUrl = "https://<your company name>.delegate365.com"
$apiKey = "<your administrator's API key>"

Connect-Delegate365 -WebApiSasKey $apiKey -WebApiBaseUrl $baseUrl

Get-AadUsers

Disconnect-Delegate365
```

### -WebApiSasKey
This key must be provided at the Connect-Delegate365 cmdlet to identify your user and the permissions defined. The command will only return objects within you permission scope. The permissions can be set by the Portal Admins in the web portal.

### -WebApiBaseUrl
This is the base URL of your Delegate365 web portal, e.g. https://contoso.delegate365.com. This parameter is required as well to address the corresponding API and must not be omitted.

The Delegate365 cmdlets will give you access to data that is assigned to your user and the assigned OU's. You will get filtered data by OU by default, you can only access your OU data, e.g. users or groups in specific OU's.
If you your user is assigned to a permission policy with PowerShell Admin permissions, no filter is set and you can access all data regardless of the OU's. Pls. ask your Delegate365 Portal Admin to check or to modify the permissions if needed in the Delegate365 web portal.

## EXAMPLE
```
Get-AadUsers -all | select UserPrincipalName, Id
```
This example returns all users the Delegate365 admin user can manage, based on his permission set.
The cmdlets return data in a structured form. You can work with the result as usual and pipe it to variables, files, etc. If no data is found, the output is blank, the cmdlet doesn't return any data.

## NOTES
Pls. check out the functionality and parameters of each command in the corresponding description file. Of course, you can combine the Delegate365 Powershell module with other modules. In case of questions pls. check out the Delegate365 blog at [Delegate365 blog](http://blog.atwork.at/category/Delegate365) or contact [atwork-it.com](https://www.atwork-it.com/).

***Happy automating with Delegate365!***

