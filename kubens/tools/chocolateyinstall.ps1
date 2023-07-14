$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/ahmetb/kubectx/releases/download/v0.9.5/kubens_v0.9.5_windows_x86_64.zip'
    CheckSum64 = 'b49b608b63ae896bb3529b3074d8b228b1691747138888857e7e9c184b68b81cf3e0c1a32b29489a80d792368435aacd27d97b9674507baac2bca7cf401eea89'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
