# Install BoxStarter & Chocolatey
Set-ExecutionPolicy RemoteSigned -Force
. { Invoke-WebRequest -UseBasicParsing https://boxstarter.org/bootstrapper.ps1 } | Invoke-Expression; Get-Boxstarter -Force

# download test packages into local Boxstarter package feed directory
@('common-workstation-software','developer-workstation-software') | ForEach-Object {
    $uri = 'https://github.com/endjin/dev-workstation-choco-demo/blob/master/packages/{0}/{0}.0.1.0.nupkg?raw=true' -f $_
    $file = '{0}\Boxstarter\BuildPackages\{1}-0.1.0.nupkg' -f $env:ProgramData, $_
    Remove-Item $file -ErrorAction SilentlyContinue
    Write-Host "Downloading pacakge: $uri"
    Invoke-WebRequest -UseBasicParsing -Uri $uri -OutFile $file -Headers @{"Cache-Control"="no-cache"} | Out-Null
}

Install-BoxStarterPackage -PackageName developer-workstation-software -DisableReboots