$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.11.6/nethermind-windows-amd64-1.11.6-127c388-20211029.zip'
    CheckSum64 = 'e0451e21b6fb7568c1189429166fcf63df9bc73f4e2f2b9c26e39fbb61720c7f8b683b58e2a9b49d2eebcceaded3c0abd3620e10f2ffc18b9e77b6d6232118c5'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
