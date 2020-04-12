<# 
Connect.ps1
This sample script connects an admin to the Delegate365 API to be able to use the cmdlets.
The URL of the Delegate365 tenant is required and an unique API key to identify the administrator. 
See how to get the API key and more info at https://blog.atwork.at/post/Delegate365-PowerShell
#>

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
