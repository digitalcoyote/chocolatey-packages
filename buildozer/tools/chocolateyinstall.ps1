$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/4.2.0/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = 'e6adb0e1cd49507f57973483f7ffdcd286984c22f7b82acb72b071949ecf28e5460fe6d30e93d4eb207c6680085b303357696e3a18cbe33a373fbe5be129ab31'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
