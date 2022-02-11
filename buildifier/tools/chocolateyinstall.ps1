$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/5.0.1/buildifier-windows-amd64.exe'
    Checksum64 = '35c6060411a3f1e8e90af0211a0e2dc4a5fb1cb37b13b2922d5b6042ea30becc4dfc1107d65223138dcff9595d7dd4cdda542256fd14373aa5efe72412bf3735'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
