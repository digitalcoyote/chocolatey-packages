$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL = 'https://github.com/tobya/DocTo/releases/download/V1.5/docto105.zip'
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Checksum = '872558d1b220824d4ca2155de56694211b1b62441a8a7286fc5df0f0b0e6abc08ea505ecf8a3e7fe15eacb4fbfdb62a036508f4d7c531e459b17524ad2cb1dca'
    ChecksumType = 'sha512'
}



Install-ChocolateyZipPackage @InstallArgs
