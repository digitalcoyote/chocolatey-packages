$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.0.2/unused_deps-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'unused_deps.exe'
    Checksum64 = '79e1a80652624ed5008bff5dd451efac086f06bfc81f38080f0f8ba1ca2127a8b7a9dc9f656c00f959a65661dd2d72971ca8c4bc9d2c31306614d86fa289c01a'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
