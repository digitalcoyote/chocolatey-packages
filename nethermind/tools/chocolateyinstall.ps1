$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.10.75/nethermind-windows-amd64-1.10.75-3100374-20210709.zip'
    CheckSum64 = '9ca3877325e8401edbd3f5d2bdaf950778eae718e7aaa9a3092763b86ec2995658367bb02a06c4ab50c1cf27791af21d94dc691351cef4aad279deb1168056b2'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
