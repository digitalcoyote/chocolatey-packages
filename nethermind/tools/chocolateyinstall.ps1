$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.11.5/nethermind-windows-amd64-1.11.5-76b7f08-20211027.zip'
    CheckSum64 = '59c2bca42083e6108f90d0f33792041c39bb02af397b198bf9e3a7300ab52db3e9a1407329ed4696af45180726c9d438c40a461e663d8b28ea25b4f7ea4891a4'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
