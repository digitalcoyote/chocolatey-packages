$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.10.74/nethermind-windows-amd64-1.10.74-53908f3-20210629.zip'
    CheckSum64 = '5e57a18270a8620bfc7a44acf87fefb955543dc3f202b3e530453f325c20f9c029d7018ab1f90c671d6c2c3be80337a08cd109c13171abbcd442efec30a30bd5'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
