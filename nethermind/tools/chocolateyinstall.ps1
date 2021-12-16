$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.12.3/nethermind-windows-amd64-1.12.3-f5f0d94-20211216.zip'
    CheckSum64 = '40264f3ec1a57bb50e65ac6928feb8c9b7b8717a38364d752e5bea841fbe1ccb51762b22617bb5a894e3f58f967b0b9b64fb1a85bc689c832bc52d233caafe43'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
