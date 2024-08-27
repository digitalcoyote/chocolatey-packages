$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v7.3.1/unused_deps-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'unused_deps.exe'
    Checksum64 = '23fcc843f4d8a234e81e5d732986a4c3ae6c72b130d03097d682c24f4134484612af36111b0a25b2b1ffc15b48936e1910cfd9d5b27ccc9d2f1bda6ca3fd0fe9'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
