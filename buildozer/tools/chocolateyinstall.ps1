$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.0.2/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = 'a3214d2a64439b27d27db949974c503ebc87252f770142abc10a9a2ea025014ce6d47782eafab1c833c578993ae28f7bae38de864f1eec2a6dec29d0a4681d05'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
