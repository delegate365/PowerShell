# Delegate365 PowerShell

Description of the PowerShell cmdlets for Delegate365 (v1.0.0.8). 

**Note:** This Version will replace the former version 1.0.0.7 and will be available in the PowerShell Gallery by end of October 2020 along with the Delegate365 v9.2 update. This version is fully compatible with the previous version.

## Synopsis

Delegate365 is an Add-On solution running in Microsoft Azure as SaaS solution for managing an Office 365 tenant offered by [atwork-it.com](https://www.atwork-it.com/). Delegate365 allows to split a single Office 365 tenant into smaller, manageable units. For more information about Delegate365, pls. see [delegate365.com](https://www.delegate365.com/).

Delegate365 provides APIs and a PowerShell module to access data that is stored within the Delegate365 system.
These cmdlets allow to read and write data from external systems into Delegate365. See also some samples in that directory.

## Installation

The Delegate365 module must be downloaded and installed once on a client computer from the [PowerShell Gallery](https://powershellgallery.com/packages/Delegate365/). The Delegate365 module can be used on any platform supporting the .NET standard 2.0 library. To overwrite an existing Delegate365 PowerShell module with the latest version, add the -Force parameter.

```powershell
Install-Module Delegate365 -Force
```

Once installed on a client machine, the Delegate365 commandlets can be used.

## Connect

Use the [Connect-Delegate365](Connect-Delegate365.md) command to connect to your Delegate365 instance and use the cmdlets afterwards.
Execute ***Get-Command -Module Delegate365*** to see a list of available commands in this module, or ***Get-Help command-name*** for information about a specific command. Add -Examples as ***Get-Help command-name -examples*** for samples how to use a specific command. All Delegate365 commands have a **"D"**-character (or the word Delegate365) included after the method to be not confusable with other PowerShell commands, e.g. [Get-DUser](Get-DUser.md) for **Get-D**elegate365**User**. [Disconnect-Delegate365](Disconnect-Delegate365.md) closes the connection.

## Basic usage

To get more information how to use the Delegate365 PowerShell, see the article [Delegate365 PowerShell](https://blog.atwork.at/post/Delegate365-PowerShell) in our blog.

```powershell
# Ensure that the module is loaded
Import-Module Delegate365

# Connect to your Delegate365 instance
$baseUrl = "https://<your company name>.delegate365.com"
$apiKey = "<your administrator's API key>"

Connect-Delegate365 -WebApiSasKey $apiKey -WebApiBaseUrl $baseUrl

# Run commands
Get-DUser -OU 'Seattle'

# Close the session
Disconnect-Delegate365
```

### Prerequisites

If you run ***Import-Module Delegate365*** and you get an error similar as 'Import-Module : Could not load file or assembly 'netstandard, Version2.0.0.0. ...', the corresponding Microsoft .NET Framework might not be installed on the client machine. The Delegate365 PowerShell module requires .NET Standard 2.0 which is supported on the following platforms and higher:

- .NET Framework 4.6.1
- .NET Core 2.0
- Mono 5.4
- Xamarin.iOS 10.14
- Xamarin.Mac 3.8
- Xamarin.Android 7.5

If one of these .NET Frameworks (or higher) is not installad on the client machine, pls. install the framework. For Windows machines, install the .NET Standard 2.0 Framework (.NET 4.7.2 runtime) from (https://www.microsoft.com/net/download/thank-you/net472). Once the required .NET Framework is installed, the Delegate365 module will load as expected. .NET Framework supports multiple versions installed on the same machine side-by-side.

### Connect-Delegate365 -WebApiSasKey and -WebApiBaseUrl

The ***-WebApiSasKey*** must be provided at the Connect-Delegate365 cmdlet to identify your user and the permissions defined. The command will only return objects within you permission scope. The permissions can be set by the Portal Admins in the web portal.

The ***-WebApiBaseUrl*** is the base URL of your Delegate365 web portal, e.g. https://mycompany.delegate365.com. This parameter is required as well to address the corresponding API and must not be omitted.

### Access is based on permissions

The Delegate365 cmdlets will give you access to data that is assigned to your user and the assigned OU's. You will get filtered data by OU by default, you can only access your OU data, e.g. users or groups in specific OU's.
If you your user is assigned to a permission policy with PowerShell Admin permissions, no filter is set and you can access all data regardless of the OU's. Pls. ask your Delegate365 Portal Admin to check or to modify the permissions if needed in the Delegate365 web portal.

### Full PowerShell support

The Delegate365 commandlets work just like you are used to work with PowerShell. These examples return the users the Delegate365 admin user can manage, based on his permission set and the applied PowerShell methods.

```powershell
# Get users and format the output as table
Get-DUser | ft

# Get all users and show only two properties
Get-DUser -All | Select Id, UserPrincipalName

# Export all users to a CSV file
Get-DUser -All | export-csv .\dusers.csv -NoTypeInformation

# Get one specific user
$u = 'NestorW@M365x737430.onmicrosoft.com'
Get-DUser -Identity $u | ft
```

The Delegate365 cmdlets return data in a structured form as objects. You can work with the result as usual and pipe it to variables, files, etc. If no data is found, the output is blank and the cmdlet doesn't return any data.

## Notes

Pls. check out the functionality and parameters of each command in the corresponding description file. Of course, you can combine the Delegate365 Powershell module with other modules. In case of questions pls. check out the Delegate365 blog at [Delegate365 blog](http://blog.atwork.at/category/Delegate365) or contact [atwork-it.com](https://www.atwork-it.com/).

***Happy automating with [delegate365.com](https://www.delegate365.com/)!***
