$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/ahmetb/kubectx/releases/download/v0.9.5/kubectx_v0.9.5_windows_x86_64.zip'
    CheckSum64 = '855e3b7fb57a5f3bc9d58d2c1b46fe9a929e2baf79d4065f5a7088627b7f1629deb1624425969d4f2c25baf12a89da605b1a6893e69ef009ed31a52468a768a6'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
