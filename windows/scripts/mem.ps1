$strComputer = $Host
Clear
$RAM = WmiObject Win32_ComputerSystem
$MB = 1048576
"Installed Memory: " + [int]($RAM.TotalPhysicalMemory /$MB) + " MB"
