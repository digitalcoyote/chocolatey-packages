$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/6.0.0/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = 'd3a78c5e72a69451c06b923581aeec65a867446a7f417f2d73be9c7f97476b1e78d68e345113e1d23a1cb12a2ab5f8bf9b325ae59f2f3914f940a47aa0b453ea'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
