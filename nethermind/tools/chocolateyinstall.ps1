$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.10.67/nethermind-windows-amd64-1.10.67-cff76f4-20210504.zip'
    CheckSum64 = '372ad6c91cf0851d04925a6a34309ea0df78e1829e8a1d57af68125fdd0093262cba65e7a11521fb0f00b3e584b18698396e0263877cfc0b004a8e039fdaa669'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
