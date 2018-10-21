# Start-DSync

## Synopsis
Starts the synchronization job in Delegate365.

## Description
Start-DSync starts the synchronization job in Delegate365.
This command does not require any parameters.
The job checks the delta between the Office 365 tenant and Delegate365 and updates modified objects in Delegate365.
Furthermore, the job runs through the rules defined in the sync rules and performs all defined and active operations.
If nor custom sync rules are defined, just the update of Delegate365 happens. Usually, this job runs automated in the background perodically during the day. 
The sync duration will vary on the size of the Office 365 tenant and the sync rules defined in Delegate365. 
So, a sync can run for some seconds only or for hours. A manual sync makes only sense, 
if you modified objects outside of Delegate365 in the Office 365 portal or with another tool 
and you need to surface the changes in Delegate365 immediately.
As output, an informational string is returned. If no error occurs, it should respond with "Started successfully" within some seconds.

## Example
```powershell
Start-DSync
```
Start the sync now.

## Parameter Description
There are no parameters.

Back to the [overview](https://github.com/delegate365/PowerShell).
