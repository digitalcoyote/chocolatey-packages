$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.11.0/nethermind-windows-amd64-1.11.0-eb0ea65-20210819.zip'
    CheckSum64 = 'bc74a72222df7dbe8a9d01436c0677152cb466ceb3729ac9bb9bda42c83655140c3672160459edcdb15b3eecb1d60e83004435856fec0c0eabf3ad6593a0b3db'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
