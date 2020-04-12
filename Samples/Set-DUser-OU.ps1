<# 
Set-DUser-OU-Sample.ps1
A sample script to assign existing users from a CSV file Set-DUser-OU-List.csv to an OU in Delegate365.
Use Connect-Delegate365 to connect to the Delegate365 API first, see 
https://github.com/delegate365/PowerShell/blob/master/Samples/Connect.ps1
#>

# Define the delimiter use to separate OUs and Domains within a single CSV Column
$CSVDelimiter = ','
Write-Output "Starting..."
$users = Import-Csv .\Set-DUser-OU-List.csv -Delimiter $CSVDelimiter
$i = 0

foreach ($user in $users) {
    $i++
    Write-Output "$i. $($user.UPN) -> $($user.OU)"

    # Assign the user to the OU
    $result = Set-DUser -Identity $user.UPN -OU $user.OU

    # Check the result of the operation
    if ($result) {
        Write-Output "OK."
    }
    else {
        Write-Output "ERROR assigning the user to OU."
    }

    # If you want to check only a few operations before running it against all items in the CSV file...
    # if ($i -ge 1) { break }
}

Write-Output "Done, $($i) users processed. Check the assigned users in the Delegate365 portal."
