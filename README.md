# Delegate365 PowerShell

Description of the PowerShell cmdlets for Delegate365 (v1.0.0.9). 

**Note:** This Version will replace the former version 2.x and is available in the PowerShell Gallery along with the Delegate365 v10 update. The latest  version is required to operate with Delegate365 v10 and fully compatible with the previous version. Further updates will follow in the near future.

## Synopsis

Delegate365 is an Add-On solution running in Microsoft Azure as SaaS solution for managing an Microsoft 365 tenant offered by [atwork-it.com](https://www.atwork-it.com/). Delegate365 allows to split a single Microsoft 365 tenant into smaller, manageable units. For more information about Delegate365, pls. see [delegate365.com](https://www.delegate365.com/).

Delegate365 provides APIs and a PowerShell module to access data that is stored within the Delegate365 system.
These cmdlets allow to read and write data from external systems into Delegate365. See also some samples in that directory.

### Prerequisites

The **Delegate365 PowerShell module** is designed **exclusively for PowerShell Core** and is not compatible with Windows PowerShell (the older, Windows-only version). It provides a set of cmdlets to interact with the Delegate365 SaaS solution for managing Microsoft 365 tenants.

PowerShell Core is cross-platform and runs on Windows, macOS, and Linux. **PowerShell Core** version **7.4 or higher** is required.

- Install PowerShell Core from https://github.com/PowerShell/PowerShell/releases

## Installation

The Delegate365 module must be downloaded and installed once on a client computer from the [PowerShell Gallery](https://powershellgallery.com/packages/Delegate365/). The Delegate365 module can be used on any platform supporting the .NET Core library. PowerShell 7.4.x or later is required.  

To install the Delegate365 PowerShell module for your current user run this PowerShell command. This installs the module only for the current user, without requiring admin rights. This is useful in environments where you don’t have admin privileges.

### Install for your user (recommended)

```powershell
Install-Module Delegate365 -Scope CurrentUser
```

### Install system-wide as computer administrator

```powershell
Install-Module Delegate365
```

To install the Delegate365 PowerShell module with the latest version, add the -Force parameter in both modes.

### Check the installation

Once installed on a client machine, the Delegate365 commandlets can be used. To check your installed modules depending on user or admin mode, check out the module in these paths:

```powershell
$env:PSModulePath -split ';'
```

This returns a result similar to this output:

```powershell
C:\Users\<your-username>\<Your-OneDrive>\Dokuments\PowerShell\Modules
C:\Program Files\PowerShell\Modules
c:\program files\powershell\7\Modules
C:\Program Files\WindowsPowerShell\Modules
C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules
```

When you install as a user with the -Scope CurrentUser parameter, your Delegate365 PowerShell module resides in your Users directory, e.g.:  
C:\Users\<your-username>\<Your-OneDrive>\Dokuments\PowerShell\Modules\Delegate365\10.0.0.2

### Update the module

```powershell
Update-Module Delegate365 -Scope CurrentUser -Force
```

Check out the updated files in your module path and the *$env* path variable (as above).  
**If the module is not working properly, delete the *\Delegate365* directory in the modules directory, and run Install-Module Delegate365 again.**

## Connect to Delegate365

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
