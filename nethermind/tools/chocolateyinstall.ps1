$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.10.70/nethermind-windows-amd64-1.10.70-9837865-20210513.zip'
    CheckSum64 = 'b0c0d12e9e4b8abc0a7f8d8b8c000e5467659917cec13d09538ac460ff3d2796fd3a675a5330bde9ade431ba6c589333d4bd844b43f374bd742d81f12b135ac0'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
