$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/6.1.1/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = '4ceed6e3acb1ead19e1a01d4eaa228037750f64338f1070f42f0ccd9bd4fe3e70cf8071386bf4ddcf40fa038a2895ccb2c475fdaa21a44b1daae5a7f5f7495c3'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
