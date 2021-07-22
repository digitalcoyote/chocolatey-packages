$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.10.79/nethermind-windows-amd64-1.10.79-e45db5f-20210722.zip'
    CheckSum64 = '3e1d189a8982a09eb8b9a9f9b5d6b2995db7e2a63038e458e8b39643975904613b16636ecae4034e85aa941914074e78e99d8744f63c39bffb1c0bbea9ca9bc2'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
