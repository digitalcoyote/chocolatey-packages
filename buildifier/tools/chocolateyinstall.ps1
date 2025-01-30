$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.0.2/buildifier-windows-amd64.exe'
    Checksum64 = '09d99cedb2280f22a93240b2a9c28e3a2f814dca0ee33839c4031733c92aadd6a51a0ee6ae8a09bc68546f2f4fd23c1ec3595caec0b618921b66d7c0c0808d92'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
