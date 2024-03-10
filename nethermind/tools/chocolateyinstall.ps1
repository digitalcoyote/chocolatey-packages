$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.25.4/nethermind-1.25.4-20b10b35-windows-x64.zip'
    CheckSum64 = '99c648d660d13018c88a6fa6128c1f0c858331ef0d29d12446bf88663b244da75cbbd97aeffe3d897c1afdb0087f419da5009d6a68795d5cab6901e24caedc80'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
