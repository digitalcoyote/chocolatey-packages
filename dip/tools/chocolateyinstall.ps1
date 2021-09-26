$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'dip.exe'
    URL = 'https://github.com/030/dip/releases/download/4.0.1/dip-windows-2019'
    Checksum = 'b7d82b60dce9efc633dedc2740421cb6588f24700e1c72dfddcea4ee3480fdce4c0e7723d2074826ff8bc7bd0bc25770780f834b6a44674bff282577ddac54a6'
    ChecksumType = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
