$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/4.2.2/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = 'b794ecbcc117291f3690faac64ec705ec7a15a9e4b68ea6da93ffd77f22e1024a9fa4de2b4945e63255c72e83d54ffcd08181c1dac1257894d49a4a28d3d8cd3'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
