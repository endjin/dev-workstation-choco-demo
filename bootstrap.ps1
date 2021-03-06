# Install BoxStarter & Chocolatey
Set-ExecutionPolicy RemoteSigned -Force
. { Invoke-WebRequest -UseBasicParsing https://boxstarter.org/bootstrapper.ps1 } | Invoke-Expression; Get-Boxstarter -Force

$starterPackage = 'https://raw.githubusercontent.com/endjin/dev-workstation-choco-demo/master/simple-boxstarter-script.txt'
Install-BoxStarterPackage -PackageName $starterPackage -DisableReboots