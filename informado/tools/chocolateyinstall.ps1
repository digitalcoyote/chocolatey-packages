$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'informado.exe'
    URL = 'https://github.com/030/informado/releases/download/3.1.1/informado-windows-2019'
    Checksum = '81759b3f90c0c8ee1392c3758f83094d6628fb3b78e85dd5d8a2f3cf7b8668e40fc3cabc06641dad62b875cad5399347f3d4f74d4ff6e1ba7e045faa9b0db624'
    ChecksumType = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
