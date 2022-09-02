$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.15.0/kind-windows-amd64'
$checksum64 = 'dbd9e61dd8b6c257fa7e72ef3259d475e3ec803ceb6eaddfd14f7c38c4647c0303b6b7f8e516f99ed275111ee92340b5aa3877a203ebd80d72f63676a5d5fc25'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
