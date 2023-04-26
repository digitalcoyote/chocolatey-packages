$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/6.1.1/buildifier-windows-amd64.exe'
    Checksum64 = 'c3e88462011b953aebbad84280d83d56487aa520b0150437535bc3edea9aa81ff94048bc253fa18c2fa55a8dc973da33fb004d8d6f6141b172d640e8d5806834'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
