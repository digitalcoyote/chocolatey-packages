$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/6.0.1/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = 'a64e8f4fbb974a20d90be0cc88613d6ce53c25403958091fd670e36e6c4a81820f5c84e26961920d3223aad7501a28dff42dedbd43f234c6fdce3760b2a4ad81'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
