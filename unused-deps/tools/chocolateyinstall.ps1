$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.0.3/unused_deps-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'unused_deps.exe'
    Checksum64 = '259fa5cc903ea4330778173964ea6fb2d11eb088501649e86e6870a8f7e8e882c7ea63d09f37f30506e0e6b30ac47480bbdc9fab87a20da3036f9716a9a1e18a'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
