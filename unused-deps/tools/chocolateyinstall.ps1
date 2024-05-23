$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v7.1.2/unused_deps-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'unused_deps.exe'
    Checksum64 = '93b43eafbd1e4ed23be0b8261dba1db39c210e269bff4ee81a1cba3373eb78b3365ae8490855821c9467600ac67378d0b4e7c4bdc0b4692a9c56498db8b38b65'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
