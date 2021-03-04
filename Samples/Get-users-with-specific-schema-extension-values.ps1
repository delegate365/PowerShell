#-----------------------------------------------------
# Get-users-with-specific-schema-extension-values.ps1
# atwork.at, Christop Wilfing, Toni Pohl, Feb. 2021
# Demo to work with Microsoft.Graph PowerShell
# to get users filtered by a schema extension
#-----------------------------------------------------

# https://docs.microsoft.com/en-us/graph/powershell/installation
# Install-Module Microsoft.Graph -Scope CurrentUser
Import-Module Microsoft.Graph

# Connect to a tenant and ask for the required permissions. As a sample, here we use Users and Groups.
$tenantID = "<tenantname>.onmicrosoft.com"
Connect-MgGraph -TenantId $tenantID -Scopes "User.ReadWrite.All","Group.ReadWrite.All" 

# See the connection details
Get-MgContext

# Get a list of existing schema extensions with a specific name (-Filter does NOT work...)
$myext = Get-MgSchemaExtension -All | ? id -like '*_delegate365userextension'
$myext

# We use the extension name from the list, or from Delegate365 (Menu Administration / settings / section Schema Extensions)
# We query all users for a property favcolor startswith "red"
$Url = 'https://graph.microsoft.com/v1.0/users?$filter=startswith(extmersxab8_delegate365userextension/favcolor, ''red'')&$select=id,displayname'
$result = Invoke-MgGraphRequest -Method GET -Uri $Url
$result.value

# After the first demo above, we want to process all data, even if there are more pages
# Define the first request:
$Url = 'https://graph.microsoft.com/v1.0/users?$filter=startswith(extmersxab8_delegate365userextension/favcolor, ''red'')&$select=id,displayname&$top=2'
do {
    $page = Invoke-MgGraphRequest -Method GET -Uri $Url
    # Returns a hash table, including a hash table for each item....! We are only interested in the "id" item property    
    $page.value | ForEach-Object { Write-Host $_['id'] $_['displayname'] }
    # Check if there are following pages
    if ($page.'@odata.nextLink') {
        Write-Host 'Loading next page…'
        $Url = $page.'@odata.nextLink'
    } else {
        Write-Host 'We got everything!'
        break
    }
} while ($true)

# Done. Happy scripting!
