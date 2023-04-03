$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName    = $env:ChocolateyPackageName
    UnzipLocation  = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    URL64          = 'https://github.com/tobya/DocTo/releases/download/v1.8/docto_64.zip'
    URL            = 'https://github.com/tobya/DocTo/releases/download/v1.8/docto_32.zip'
    Checksum64     = '167c35d248cfed6a7f21f8b6e3ec1444bff2796e9c7272c14849496789a1921a823eb4a5ea9d2954d68a7904ca842fa8771f2836f82b4949ae84d1366adcc82c'
    Checksum       = '81c7c5a29e8f3df5c53c00d2d3cc6633d4824555c36aadcd547592c3b6fc2e96'
    ChecksumType64 = 'sha512'
    ChecksumType   = 'sha512'
}



Install-ChocolateyZipPackage @InstallArgs
