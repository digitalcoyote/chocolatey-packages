$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'dip.exe'
    URL = 'https://github.com/030/dip/releases/download/3.0.2/dip-windows-2019'
    Checksum = 'cc7e305ba72b6428c398d920f549f669dd5165bad9fbab5490e8bc0caf10801ed16fde741c72db0ce04ad1117e1d6f10ebdf8be57bc359199bec157184959e00'
    ChecksumType = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
