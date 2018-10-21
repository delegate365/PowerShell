# Start-DMFASync

## Synopsis
Starts the MFA synchronization job in Delegate365.

## Description
Start-DMFASync starts the Multi Factor Authentication (MFA) synchronization job in Delegate365.
This command does not require any parameters.
The job runs through the rules defined in the sync rules and sets the desired MFA status to members of the provided security groups.
If nor MFA rules are defined, no MFA operations happen. Usually, this job runs automated in the background perodically during the day. 
The MFA sync duration will vary on the size of the Office 365 tenant and the MFA sync rules defined in Delegate365. 
As output, an informational string is returned. If no error occurs, it should respond with "Started successfully" within some seconds.

## Example
```powershell
Start-DMFASync
```
Start the MFA sync now.

## Parameter Description
There are no parameters.

Back to the [overview](https://github.com/delegate365/PowerShell).
