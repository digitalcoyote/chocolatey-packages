$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.24.0/kind-windows-amd64'
$checksum64 = '61493e951df89f6f1b1fd3497cb367c3b0f9f6bd8a8b91d54948594714905167aec7784c504760b7f9c61705042f7eab15818933565e9253e43b1cb9d7260dc8'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
