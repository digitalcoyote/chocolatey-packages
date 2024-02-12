$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName    = $env:ChocolateyPackageName
    UnzipLocation  = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    URL64          = 'https://github.com/tobya/DocTo/releases/download/v1.12/docto_64.zip'
    URL            = 'https://github.com/tobya/DocTo/releases/download/v1.12/docto_32.zip'
    Checksum64     = '60af3739fb87f445e4317402b3bb02f3692e0f1cabc0bf2a47411a940118396fed3107eeff642cb2be8e433de5a155f5b245fe07dfe4b7f3cb148e5e5a6ecb47'
    Checksum       = '2164388933906b0e3171eb4bb7e7882fdd9934ea1748d796cfebc800c82aef51'
    ChecksumType64 = 'sha512'
    ChecksumType   = 'sha512'
}



Install-ChocolateyZipPackage @InstallArgs
