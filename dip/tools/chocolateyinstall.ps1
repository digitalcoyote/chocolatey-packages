$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'dip.exe'
    URL = 'https://github.com/030/dip/releases/download/2.2.0/dip-windows-2019'
    Checksum = 'f63ab35060509ea3d6e347cf7c67e906f8fb0886c1ad2275505046adce81273bf8f37d066a04a3783eb6aab4402e686ab8ae78e977eeca053f68066bd78f2260'
    ChecksumType = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
