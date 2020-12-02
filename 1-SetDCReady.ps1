Set-NetFirewallProfile -Enabled False


$url = "https://raw.githubusercontent.com/cemvarol/DC/master/ChromeInstall.ps1"
$output1 = "$env:USERPROFILE\downloads\ChromeInstall.ps1"
Invoke-WebRequest -Uri $url -OutFile $output1

$url = "https://raw.githubusercontent.com/cemvarol/seandc/main/OneTouchDCInstallation.ps1"
$output2 = "$env:USERPROFILE\desktop\InstallDC.ps1"
Invoke-WebRequest -Uri $url -OutFile $output2

$url = "https://raw.githubusercontent.com/cemvarol/seandc/main/50-ADUsers.ps1"
$output3 = "$env:USERPROFILE\desktop\50-ADusers.ps1"
Invoke-WebRequest -Uri $url -OutFile $output3

$url = "https://raw.githubusercontent.com/cemvarol/seandc/main/Office2016.url"
$output4 = "$env:USERPROFILE\desktop\Office2016.url"
Invoke-WebRequest -Uri $url -OutFile $output4

Start-Sleep -s 3

Start-Process Powershell.exe -Argumentlist "-file $output1"

Start-Sleep -s 30

Start-Process Powershell.exe -Argumentlist "-file $output2"

