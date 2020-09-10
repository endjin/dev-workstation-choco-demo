# Developer Workstation Chocolatey Demo

Some examples of using Chocolatey to automate the configuration of developer workstation.

## Running the bootstrapper

The simple scenario can be tested on a fresh VM (with Internet access) using the following command from an elevated PowerShell console:

### Full Demo Scenario
```
. { iwr -useb https://raw.githubusercontent.com/endjin/dev-workstation-choco-demo/master/bootstrap.ps1 -Headers @{"Cache-Control"="no-cache"} } | iex;
```

### Partial Demo Scenario
```
. { iwr -useb https://raw.githubusercontent.com/endjin/dev-workstation-choco-demo/master/bootstrap-quick.ps1 -Headers @{"Cache-Control"="no-cache"} } | iex;
```

### Package-based Scenario
```
. { iwr -useb https://raw.githubusercontent.com/endjin/dev-workstation-choco-demo/master/bootstrap-from-package.ps1 -Headers @{"Cache-Control"="no-cache"} } | iex;
```
