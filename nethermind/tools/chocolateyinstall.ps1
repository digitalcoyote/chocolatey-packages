$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.12.2/nethermind-windows-amd64-1.12.2-5bfaae6-20211207.zip'
    CheckSum64 = 'd735dc5dd87eab6a9a64358beef6d1af78d0e1f3dcd2c6b09a4e5006b3f7fbad8ab3acda1b1940bcc0e7b99b0279342bf0f63bda66d853e643dd27a47f21c625'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
