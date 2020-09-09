# Install BoxStarter & Chocolatey
Set-ExecutionPolicy RemoteSigned -Force
. { iwr -useb https://boxstarter.org/bootstrapper.ps1 } | iex; Get-Boxstarter -Force

$starterPackage = 'https://raw.githubusercontent.com/endjin/dev-workstation-choco-demo/master/simple-boxstarter-script.txt'
Install-BoxStarterPackage -PackageName $starterPackage -DisableReboots