$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'bazelisk.exe'
    URL64 = 'https://github.com/bazelbuild/bazelisk/releases/download/v1.22.0/bazelisk-windows-amd64.exe'
    Checksum64 = 'bccfa699f0f4fb195f4d0278173ead39679ce86606c763e9f4a5f630e261ab1b72ffaae807c7575a94690287063d0a7f1607501556104fd97263a145432edf54'
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
