$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.0.3/buildifier-windows-amd64.exe'
    Checksum64 = '4c7ae47f11faf5b74475920e8bbcf89a6f36b33f264ac2f70edfa9ceb580532e9848e96127b851881bf93b683b4f150680e93136e2f99da6d893a710974e853a'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
