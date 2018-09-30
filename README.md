# PowerShell
PowerShell cmdlets and info for Delegate365 v8.2

## SYNOPSIS
Delegate365 is an Add-On solution running in Microsoft Azure as SaaS solution for managing an Office 365 tenant offered by (https://www.atwork-it.com/). Delegate365 allows to split a single Office 365 tenant into smaller, manageable units. For more information about Delegate365, pls. see (https://www.delegate365.com/).

Delegate365 provides APIs and a PowerShell module to access data that is stored within the Delegate365 system.
These cmdlets allow to read and write data from external systems into Delegate365.

## BASIC SYNTAX

```
Disable-CmdletExtensionAgent [-Identity] <CmdletExtensionAgentIdParameter> [-Confirm]
 [-DomainController <Fqdn>] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
The Delegate365 module must be downloaded and installed on the client machine. Delegate365.Api.Client.dll is a .NET standard 2.0 library that can be used on that platform. Once downloaded, reference to the module in your PowerShell scripts as here.

```
$basePath = $PSScriptRoot
if ([string]::IsNullOrEmpty($basePath))
{
    $basePath = Split-Path -parent $psISE.CurrentFile.Fullpath
}

$modulePath = $basePath + '\bin\Debug\netstandard2.0\Delegate365.Api.Client.dll'

Import-Module $modulePath

$baseUrl = "https://[<your company name>.delegate365.com]/api/"
$apiKey = "[<your administrator's API key>]"
```

Then, you can use the cmdlets as in this sample.

```
Get-AadUsers -WebApiSasKey $apiKey -WebApiBaseUrl $baseUrl | select Id
```

The Delegate365 cmdlets will give you access to data that is assigned to your user and the assigned OU's. This means, you will get filtered data by OU by default, you can only access you OU data.
If you your user is assigned to a permission policy with PowerShell Admin permissions, no filter is set and you can access all data regardless of the OU's. Pls. ask your Delegate365 Portal Admin to check or to modify the permissions if needed.

## EXAMPLES

### -------------------------- Example 1 --------------------------
```
Get-AadUsers -WebApiSasKey $apiKey -WebApiBaseUrl $baseUrl | select Id
```

This example returns all users.

## PARAMETERS

### -WebApiSasKey
This key must be provided for each Delegate365 cmdlet to identify your user and the permissions defined. The command will only return objects within you permission scope. The permissions can be set by the Portal Admins in the web portal.

### -WebApiBaseUrl
This is the base URL of your Delegate365 web portal with the API method appended, e.g. https://contoso.delegate365.com/api/

This parameter is required as well to address the corresponding API and must not be omitted.

## OUTPUTS

###  
The cmdlets return data in a structured form. You can work with the result as usual and pipe it to variables, files, etc. If no data is found, the output is blank, the cmdlet doesn't return any data.

## NOTES
In case of questions pls. check out the Delegate365 blog at (http://blog.atwork.at/category/Delegate365) or contact (https://www.atwork-it.com/).

