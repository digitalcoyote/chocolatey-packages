$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.12.4/nethermind-windows-amd64-1.12.4-1c8b669-20220113.zip'
    CheckSum64 = 'b1035426ad6e331c085b26599a09133ed19d1046c3faeaac5fcc34e53b22f9a68c4e5afa86a8fb48bb1d43d0ff819fe3fa3476878c414215958519bf4248c852'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
