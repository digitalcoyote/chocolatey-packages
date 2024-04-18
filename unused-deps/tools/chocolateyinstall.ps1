$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v7.1.1/unused_deps-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'unused_deps.exe'
    Checksum64 = '6b0153b1114c33cbb9bc332737bb9caa122eb46e74645bf8f9e458a26dd0885e0d69480b0fea8cc6e2550276e784937d419f2fa6de08a5351aafb660ec84a800'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
