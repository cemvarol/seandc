Set-NetFirewallProfile -Enabled False


$url1 = "https://raw.githubusercontent.com/cemvarol/DC/master/ChromeInstall.ps1"
$output1 = "$env:USERPROFILE\downloads\ChromeInstall.ps1"
Invoke-WebRequest -Uri $url1 -OutFile $output1

$url2 = "https://raw.githubusercontent.com/cemvarol/seandc/main/OneTouchDCInstallation.ps1"
$output2 = "$env:USERPROFILE\desktop\InstallDC.ps1"
Invoke-WebRequest -Uri $url2 -OutFile $output2

$url3 = "https://raw.githubusercontent.com/cemvarol/seandc/main/50-ADUsers.ps1"
$output3 = "$env:USERPROFILE\desktop\50-ADusers.ps1"
Invoke-WebRequest -Uri $url3 -OutFile $output3

$url4 = "https://raw.githubusercontent.com/cemvarol/seandc/main/Office2016.url"
$output4 = "$env:USERPROFILE\desktop\Office2016.url"
Invoke-WebRequest -Uri $url4 -OutFile $output4

$url5 = "https://github.com/cemvarol/DC/raw/master/Active%20Directory%20Users%20and%20Computers.lnk"
$output5 = "$env:USERPROFILE\desktop\Active Directory Users and Computers.lnk"
Invoke-WebRequest -Uri $url5 -OutFile $output5

Start-Sleep -s 3

Start-Process Powershell.exe -Argumentlist "-file $output1"

Start-Sleep -s 30

Start-Process Powershell.exe -Argumentlist "-file $output2"

