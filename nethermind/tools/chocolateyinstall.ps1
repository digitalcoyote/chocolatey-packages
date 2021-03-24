$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.10.48/nethermind-windows-amd64-1.10.48-589bce9-20210323.zip'
    CheckSum64 = '2be76bb8bf61197bb10a09c7a5477e86b2234b9255705dfe50f417e3a9201986c45f0ac5c2a9ca0627c56290b260a2749d7f986f85ffb859c9edba3831e792d5'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
