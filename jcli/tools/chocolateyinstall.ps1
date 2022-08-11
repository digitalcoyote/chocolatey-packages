$ErrorActionPreference = 'Stop';

$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)


$ChocolateyInstallZipArguments = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/jenkins-zh/jenkins-cli/releases/download/v0.0.40/jcli-windows-amd64.zip'
    CheckSum64 = 'b204a60364a06c98fa82765114abc9d61229ca30a72c04555a1c8d1888237545dab7db45edf14785570c83e093c3aef5abc22945453eeb2ef2ce3e5955791223'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ChocolateyInstallZipArguments
