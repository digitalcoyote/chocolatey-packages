$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'bazelisk.exe'
    URL64 = 'https://github.com/bazelbuild/bazelisk/releases/download/v1.13.2/bazelisk-windows-amd64.exe'
    Checksum64 = '875b15e1e26dafcc0f347bf25d705727f70f0b93c4c5d3bbcad334f58017bf024c021f7bb0057227077b4ea6dd957657bea7160f2f6e44e46977b62813e58371'
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
