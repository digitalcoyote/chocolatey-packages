$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.10.65/nethermind-windows-amd64-1.10.65-1f48c76-20210429.zip'
    CheckSum64 = '7270faa793de6fce93222587ceb60e029468a8f16bf1429fadf78a707aab0154c484cd20d1952de7f594cfefd711439f7104651850ec871827169ce99c1ab972'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
