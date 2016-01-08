REG ADD "HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}" /v IsInstalled /t REG_DWORD /d 00000000 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}" /v IsInstalled /t REG_DWORD /d 00000000 /f

REG ADD "HKLM\Software\Microsoft\ServerManager" /v DoNotOpenServerManagerAtLogon /t REG_DWORD /d 00000001 /f

mkdir \DIAD

$Url = "https://raw.githubusercontent.com/markgar/bi-experience-student-vm-deployment/master/README.md"
$LocalPath = "C:\DIAD\readme.md"
$Wget = New-Object System.Net.WebClient
$Wget.DownloadFileAsync($Url, $LocalPath)
