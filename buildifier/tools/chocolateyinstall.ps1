$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/4.2.5/buildifier-windows-amd64.exe'
    Checksum64 = 'ec89a212d6faeb18fafb2f0479d1c45a8583881150ae3315108545fe76270cf7601d0109a2c55c1a34ee6729e34879e342f9236b80c78743ce1b356007a8f1d7'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
