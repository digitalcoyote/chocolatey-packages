$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName    = $env:ChocolateyPackageName
    UnzipLocation  = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    URL64          = 'https://github.com/tobya/DocTo/releases/download/v1.11/docto_64.zip'
    URL            = 'https://github.com/tobya/DocTo/releases/download/v1.11/docto_32.zip'
    Checksum64     = '893a951a27dd619938b934546a0f7328c677131185dc45e22e4acae7109df3e14be319c16556ede37457f09c3a27aec037c3fff283b701c93fd38858a8231244'
    Checksum       = '2fbced131bef3ad02ff97475769931f62f12b8c4b70700fd6e9be5f9cf946571'
    ChecksumType64 = 'sha512'
    ChecksumType   = 'sha512'
}



Install-ChocolateyZipPackage @InstallArgs
