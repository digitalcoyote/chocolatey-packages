$ErrorActionPreference = 'Stop';

$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)


$ChocolateyInstallZipArguments = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/jenkins-zh/jenkins-cli/releases/download/v0.0.44/jcli-windows-amd64.zip'
    CheckSum64 = '53610b01014fa8cd93dd29a28e23533e10093e92ad1d8840e441c8e33b77dfc5502d0266fb15efb0e3440ae9bf7d9235c27bb34be50c0f185c9ebf3722156a05'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ChocolateyInstallZipArguments
