$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName    = $env:ChocolateyPackageName
    UnzipLocation  = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    URL64          = 'https://github.com/tobya/DocTo/releases/download/v1.14/docto_64.zip'
    URL            = 'https://github.com/tobya/DocTo/releases/download/v1.14/docto_32.zip'
    Checksum64     = 'bc07a967e70da6ab79bbbf523af14384c3ab57970f668098b943e6ae8fed84ecfeca5457cfdaa7061bd06d9d0fee5eac8e6eb98c20cbda4016c0037509468891'
    Checksum       = 'e8fd22a2868bc3c2ce7e5cca0504b3c92f159e640cf0495decae20753b4939b1'
    ChecksumType64 = 'sha512'
    ChecksumType   = 'sha512'
}



Install-ChocolateyZipPackage @InstallArgs
