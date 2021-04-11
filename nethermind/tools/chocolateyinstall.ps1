$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.10.56/nethermind-windows-amd64-1.10.56-7f6fe55-20210410.zip'
    CheckSum64 = '4193ae2786d00b527d5c4685bf3fca30067bd1dc8ccb48eb914901dff1f8c58cc0547ce5a6c36d8d5c5e50f8ffef3cb2f4082268df805bb7443f0959efc82b02'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
