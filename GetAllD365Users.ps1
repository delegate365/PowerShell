$basePath = $PSScriptRoot
if ([string]::IsNullOrEmpty($basePath))
{
    $basePath = Split-Path -parent $psISE.CurrentFile.Fullpath
}

$modulePath = $basePath + '\bin\Debug\netstandard2.0\Delegate365.Api.Client.dll'

Import-Module $modulePath

$baseUrl = "https://demo8.delegate365.com/api/"
$apiKey = Read-Host -Prompt 'API Key'