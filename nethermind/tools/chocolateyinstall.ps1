$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.13.1/nethermind-windows-amd64-1.13.1-155ca7a-20220527.zip'
    CheckSum64 = '1e5b12408308928be70a120e75a3a075e79cf1c024432d5d01e5a538fb274333c4a2c1740ddb283e2a1015da63b608fcee2c465454a8b598a001940bfdf23e85'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
