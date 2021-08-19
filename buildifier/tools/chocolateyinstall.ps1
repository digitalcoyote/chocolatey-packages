$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'bazelisk.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/4.0.1/buildifier-windows-amd64.exe'
    Checksum64 = '7973d1dc43795e0611dc3e525be7e6656e51622abc3d982de07f3a582b2090db10f8233589294a35ccd7108ed305e1f69f750670d9125917c45d483c378ac784'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
