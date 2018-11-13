<# 
New-DAdministrator-Sample.ps1
A sample script to create new administrators in Delegate365 out of the file New-DAdministrator-List.csv.
If an admin is already existing, no action is done. If he or she is not existing, the new admin gets created with the parameters.
Note that the assigned Permission Policy "Scope Admins" and the OU's and domains should already exist, otherwise no assignment will happen.
The new admin will be set Active=Yes and can login to the Delegate365 portal instantly.
#>

# Define the delimiter use to separate OUs and Domains within a single CSV Column
$ConstSubCSVDelimiter = ','

Write-Output "Starting..."
$admins = Import-Csv .\New-DAdministrator-List.csv
$i = 0

foreach ($admin in $admins) {
    $i++
    Write-Output "$i. $($admin.UPN)"

    # Does the admin already exist?
    $check = Get-DAdministrator -Identity $admin.UPN

    if ($check) {
        # That admin is already existing.
        Write-Output "$($admin.UPN) already exists, no action done."
    } 
    else {
        # Admin is not existing, let's define some settings and create him.
        $settings = New-Object -TypeName Delegate365.Api.Core.Models.AdministratorSettings
        $settings.Email = $admin.UPN
        $settings.Phone = ''
        $settings.UsageLocation = 'US'
        $settings.DailyNotifications = $false

        # Now, create the admin with OU and domain memberships, policy and settings
        $result = New-DAdministrator `
            -UserPrincipalName $admin.UPN `
            -OrganizationalUnits $(if ($admin.ou -match $ConstSubCSVDelimiter) {$admin.ou.split($ConstSubCSVDelimiter)} else {$admin.ou} ) `
            -Domains $(if ($admin.Domain -match $ConstSubCSVDelimiter) {$admin.Domain.split($ConstSubCSVDelimiter)} else {$admin.Domain} ) `
            -D365Permission "Scope Admins" `
            -Settings $settings

        # Check the result of the operation
        if ($result) {
            Write-Output "OK, Admin created"
        }
        else {
            Write-Output "ERROR creating $($admin.UPN)"
        }
    }
}

Write-Output "Done, $i admins processed. Check the new admins in the Delegate365 portal."
