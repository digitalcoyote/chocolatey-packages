$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/4.2.5/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = 'e7534d0315bc3ec29c7e7ae4baf6b6f65aa2301ebc4d2d05dbadffcf7032e89ba526fb697191e523823219b2afdefe01f0500f093269b632585b418331c457c0'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
