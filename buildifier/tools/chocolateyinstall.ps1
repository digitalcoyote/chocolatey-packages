$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/4.2.0/buildifier-windows-amd64.exe'
    Checksum64 = '1fefc1e52a547244b1d9093eeee672887a5c7d2920ab81a84757357f08eac21ca8c248be4ca81362755cc6f0f386cc47f6ff18395fd75a54cf087b4db914be1d'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
