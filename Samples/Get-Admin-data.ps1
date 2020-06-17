<# 
Get-Admin-data.ps1
A sample script to get OUs and permissions of a Delegate365 administrator.
Use Connect-Delegate365 to connect to the Delegate365 API first, see 
https://github.com/delegate365/PowerShell/blob/master/Samples/Connect.ps1
#>

# Get a list of all admins
Get-DAdmin -All

# Get data of one specific admin
$OneAdmin = "adelev@<mytenant>.onmicrosoft.com"
$body = Get-DAdmin -Identity $OneAdmin

# To access one specific (the first) item in the OU collection:
$body.OrganizationalUnits[0].Id
$body.OrganizationalUnits[0].Name

# Loop through all OUs of that admin
$i=0
foreach ($OU in $body.OrganizationalUnits) {
    $i++
    # To access the values, use the .ToString() function
    $OU.Id.ToString()
    $OU.Name.ToString()
    # and use it in outputs as here
    Write-Host "$i. OU ID = $($OU.Id.ToString()), OU Name = $($OU.Name.ToString())"
}

# Output all OUs of an admin to a CSV
$body.OrganizationalUnits | Export-CSV -notypeinformation -delimiter ',' -path ".\OUs.csv" -Encoding utf8

# Get all permissions and extract the data
$AllPermissions = ConvertFrom-Json -InputObject $body.Permissions

foreach ($permission in $AllPermissions) {
    # Get all permissions by using the $permission object itself
    # $permission
    
    # To get a specific permission, use the properties, such as
    $permission.SharePoint
    $permission.Reports
    $permission.OUs
    $permission.Users
    # etc.
}

# End.
