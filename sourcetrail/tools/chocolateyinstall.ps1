$ErrorActionPreference = 'Stop';
$ZipFile = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'Sourcetrail.zip'
$InstallChocolateyZipPackageArgs = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = $ZipFile
    Url64Bit = 'https://github.com/CoatiSoftware/Sourcetrail/releases/download/2021.4.19/Sourcetrail_2021_4_19_Windows_64bit_Installer.zip'
    Checksum64 = 'a8efd38d3b177a09bc859eaf13ac9fc06f142ea2dcf10feb37f8aa55f4d72a9b7334531c4bcf686af43c249f7e463734039d5ab6b9c94a427a1c39828bd7463a'
    CheckSumType64 = 'sha512'
}

If (Test-Path Sourcetrail.zip){Remove-Item $ZipFile -Recurse}
$file = Install-ChocolateyZipPackage @InstallChocolateyZipPackageArgs
"$file"

$InstallFileArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'msi'
    SilentArgs = '/q'
    File = (Get-ChildItem -Path $file -Filter 'sourcetrail.msi' -Recurse).FullName
}

Install-ChocolateyInstallPackage @InstallFileArgs

Remove-Item $ZipFile -Recurse
