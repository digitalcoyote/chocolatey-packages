$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.10.58/nethermind-windows-amd64-1.10.58-546b2a6-20210413.zip'
    CheckSum64 = '39be47eb451fc6e6d846dc4ca93e4fa7cbd68967407a02c95b4e837e335552be04f703b7135f46749b422ea6312bf5b7c98898efecf8b08754659c9e3ae6dd25'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
