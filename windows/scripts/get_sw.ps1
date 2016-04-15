$strComputer = $Host
Clear
#Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName | Format-List
@(Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*)+@(Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*) | foreach { $_.DisplayName } | Get-Unique
