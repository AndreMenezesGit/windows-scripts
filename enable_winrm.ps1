
# Set start mode to automatic
Set-Service WinRM -StartMode Automatic

# Verify start mode and state - it should be running
Get-WmiObject -Class win32_service | Where-Object {$_.name -like "WinRM"}

# Trust all hosts. Can be usefull unset this later
Set-Item WSMan:localhost\client\trustedhosts -value *

# Verify trusted hosts configuration
Get-Item WSMan:\localhost\Client\TrustedHosts
