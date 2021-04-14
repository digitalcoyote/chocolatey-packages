$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.10.59/nethermind-windows-amd64-1.10.59-3c0e001-20210414.zip'
    CheckSum64 = '9ce5dc14a06d4fd54e7ae136be05f83d52c1c414e2cc03fdcb73a170955f18801ca2e5a4319e1bed2f6e3cf635b0b478bc50bb61c5014ae82b49f1d53ba96b32'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
