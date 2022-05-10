$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.13.0/nethermind-windows-amd64-1.13.0-2e8910b-20220510.zip'
    CheckSum64 = '6751a98ff529b44e14272a0e84e557d88e38f9ecfd8f5b438b0908935dfdbac54f48339e2d1e126e7b99f8cdcc870f94d359248794a81a6b403092607ab554fb'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
