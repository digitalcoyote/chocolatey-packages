$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName    = $env:ChocolateyPackageName
    UnzipLocation  = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    URL64          = 'https://github.com/tobya/DocTo/releases/download/v1.15/docto_64.zip'
    URL            = 'https://github.com/tobya/DocTo/releases/download/v1.15/docto_32.zip'
    Checksum64     = 'e7ed5f82a594f651efc64a8b946822c7c8c91fb933ed1b7757dd61653bc14dc6416b73e19a473ef4ee53d681a7c1cc2f20572fc850b5382b870e2c0848a0901f'
    Checksum       = '00e9ae2027724c829ff4e7d1d0a40c3d29e13584792a82289da50543be292550'
    ChecksumType64 = 'sha512'
    ChecksumType   = 'sha512'
}



Install-ChocolateyZipPackage @InstallArgs
