$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName    = $env:ChocolateyPackageName
    FileType       = 'msi'
    SilentArgs     = '/q'
    URL64          = 'https://github.com/Tichau/FileConverter/releases/download/v1.2.3/FileConverter-1.2.3-x64-setup.msi'
    Checksum64     = '651fddb9e4f6250a29a31e7a152217b196ca7642de0e6c9a4b4fd1ef0f83a769bc9c22bd07ef7310b104ee1171c37460be99daf0fd08d2d415d06b8df78d62ee'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs

