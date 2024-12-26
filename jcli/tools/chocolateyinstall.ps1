$ErrorActionPreference = 'Stop';

$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)


$ChocolateyInstallZipArguments = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/jenkins-zh/jenkins-cli/releases/download/v0.0.46/jcli-windows-amd64.zip'
    CheckSum64 = '024333a86e153f8ba5ff28a69d99cf9ea670a96857bfe392ac91004cabd009ff8c2ea73015c986cc8664d0eb6c82b3c2bd2f51e0168a7aabeb867418bb2477e0'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ChocolateyInstallZipArguments
