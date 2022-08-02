$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.13.6/nethermind-windows-amd64-1.13.6-be7b4ab-20220801.zip'
    CheckSum64 = '4fe20d392412ed559301fb406d26cb59e05130fad403d9fb5aa9b71d58980479dd3398f58e007723471d5b35c1580bc808fac656177544dbfc0c75072e5be62c'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
