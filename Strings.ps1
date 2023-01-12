# change the filename to the desired file you want to search in.
$filename = "C:\Users\manny\Desktop\strings.txt"

#IP address regular expression
Write-Host "IP Addresses in ${filename}:"
(Get-Content $filename | Select-String "[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*" -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
Write-Host ""

#commands related to powershell
Write-Host "Powershell commands in ${filename}:"
(Get-Content $filename | Select-String "powershell | IEX | -nop -w hidden | -noni | -ep bypass | ExecutionPolicy | New-Object System | FromBase64String | GzipStream | powershell.exe -e" -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
Write-Host ""

#URLs
Write-Host "URLs in ${filename}:"
(Get-Content $filename | Select-String "^(http:\/\/)?(www\.)?[a-zA-Z0-9]+\.[a-zA-Z]+(\/[a-zA-Z0-9]+)*$" -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
Write-Host ""

#Powershell keywords
Write-Host "Powershell keywords in ${filename}:"
(Get-Content $filename | Select-String "^[Pp][Oo][Ww][Ee][Rr][Ss][Hh][Ee][Ll][Ll]" -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
Write-Host ""

#cmd keywords
Write-Host "Cmd keywords in ${filename}:"
(Get-Content $filename | Select-String "^[Cc][Mm][Dd]" -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
Write-Host ""

#registry keys
Write-Host "Registry keys in ${filename}:"
(Get-Content $filename | Select-String "HKEY_LOCAL_MACHINE\\[^\\]*\\[^\\]*" -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
Write-Host ""

#file paths
Write-Host "File paths in ${filename}:"
(Get-Content $filename | Select-String "^[A-Z]:\\[^\\]*\\[^\\]*\\" -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
Write-Host ""

#Encryption and compression
Write-Host "Encryption and compression keywords in ${filename}:"
(Get-Content $filename | Select-String "AES" -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
(Get-Content $filename | Select-String "Gzip" -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
Write-Host ""

# Process and thread creation
Write-Host "Process and thread creation keywords in ${filename}:"
(Get-Content $filename | Select-String "CreateProcess" -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
(Get-Content $filename | Select-String "CreateThread" -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
Write-Host ""

# Privilege escalation
Write-Host "Privilege escalation keywords in ${filename}:"
(Get-Content $filename | Select-String "SeDebugPrivilege" -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
(Get-Content $filename | Select-String "SeLoadDriverPrivilege" -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
Write-Host ""

# Anti-debugging and anti-virtualization
Write-Host "Anti-debugging and anti-virtualization keywords in ${filename}:"
(Get-Content $filename | Select-String "IsDebuggerPresent" -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
(Get-Content $filename | Select-String "GetTickCount" -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
Write-Host ""

# Common admin tool usage
Write-Host "net command keywords in ${filename}:"
(Get-Content $filename | Select-String "^net " -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
Write-Host ""

Write-Host "ping command keywords in ${filename}:"
(Get-Content $filename | Select-String "^ping " -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
Write-Host ""

Write-Host "vssadmin command keywords in ${filename}:"
(Get-Content $filename | Select-String "^vssadmin " -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
Write-Host ""

Write-Host "netstat command keywords in ${filename}:"
(Get-Content $filename | Select-String "^netstat " -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
Write-Host ""

Write-Host "nslookup command keywords in ${filename}:"
(Get-Content $filename | Select-String "^nslookup " -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
Write-Host ""

Write-Host "tasklist command keywords in ${filename}:"
(Get-Content $filename | Select-String "^tasklist " -AllMatches) -replace '\n', ' ' | ForEach-Object { Write-Host "[+] $_" }
Write-Host ""
