$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.10.66/nethermind-windows-amd64-1.10.66-0b294a8-20210429.zip'
    CheckSum64 = 'b1d52018b10f86530b2f0a8540b69d99e666a2430b925fee5eb1ed7b21dce2def4444dc760972656893c30eda65ed6497f9877fff83807b817c57e4246b46e43'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
