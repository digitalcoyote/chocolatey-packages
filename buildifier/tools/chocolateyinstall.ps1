$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.0.1/buildifier-windows-amd64.exe'
    Checksum64 = 'dcbb10a4d4f33551a1fc6d8e1a2bfa15b4dd28cfc03d17956eeaa3cd12d6eb6e1b02a881e0046ad39504bc982865db7a5e733c6053192de24561da8848c09fe8'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
