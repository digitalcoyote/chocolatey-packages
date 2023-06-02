$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName    = $env:ChocolateyPackageName
    UnzipLocation  = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    URL64          = 'https://github.com/tobya/DocTo/releases/download/v1.9/docto_64.zip'
    URL            = 'https://github.com/tobya/DocTo/releases/download/v1.9/docto_32.zip'
    Checksum64     = '35a31d6791df113b41943278c08cdef16c16435a2dfbff6400429284fa447dd4288109533a70182396bd122aed774bcf0fbcdcf50b9e1f9091e5bb62586f408c'
    Checksum       = '831d7280386d95bf84629b8eb596bad7cbb3cc266aea7691767b11dae6a2014c'
    ChecksumType64 = 'sha512'
    ChecksumType   = 'sha512'
}



Install-ChocolateyZipPackage @InstallArgs
