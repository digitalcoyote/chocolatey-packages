$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.12.7/nethermind-windows-amd64-1.12.7-3b419f1-20220407.zip'
    CheckSum64 = '100b74c153fe79885865c809995a5146a15849f00ffb40d95e14362fcea70ba9d7f2ab4b1c358023d5a3401ec43109ea238e4dad8b9582bca3e7e255e6a0fa26'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
