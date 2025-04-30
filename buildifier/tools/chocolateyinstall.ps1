$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.2.0/buildifier-windows-amd64.exe'
    Checksum64 = '21f5f4b79b5b3f34adb945ace1ff7858a7720719c23507fd3178e00fe9538e47b606b8920b8ffd025f5e5e7cb467876f946bff7ef4995cb7ecb50760bc874cd0'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
