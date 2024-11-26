$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'bazelisk.exe'
    URL64 = 'https://github.com/bazelbuild/bazelisk/releases/download/v1.24.1/bazelisk-windows-amd64.exe'
    Checksum64 = 'c7c17927d7fead5535a9a2f1328e91f7c5c6430fa8459d1213924c9c2b3f7d0897f346064d43e189b2a0e150bc432ecf17d2581a37861453119ff5bb37980e55'
    ChecksumType64 = 'sha512'
    MaxIdleTime = 10000
}

Get-ChocolateyWebFile @InstallArgs;
$bazel = 'bazel.exe';
$bazelisk = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'bazelisk.exe';
Set-Location  (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName));

try{
    New-Item -ItemType HardLink -Name $bazel -Value $bazelisk -Force;
}
catch{
    Copy-Item -Path $bazelisk -Destination $bazel -Force
}
