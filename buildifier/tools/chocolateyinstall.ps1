$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v7.3.1/buildifier-windows-amd64.exe'
    Checksum64 = '6dc36da143b846ea1e3289dcd58240644fec13c850913e6102a292cd14bd535bf865c5f3c087f2d1d630a955179379e885b38734b852bbb528fe11930303a491'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
