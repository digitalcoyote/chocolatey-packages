$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'bazelisk.exe'
    URL64 = 'https://github.com/bazelbuild/bazelisk/releases/download/v1.23.0/bazelisk-windows-amd64.exe'
    Checksum64 = 'bcf14cc4ca3ea281ddd855a70ef83e9725920f61f0a6688dae576be3fb836474a86dfbc4fd2e38dbea250ffb6e4c26b841a838b85016974a485e4c5edb24c335'
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
