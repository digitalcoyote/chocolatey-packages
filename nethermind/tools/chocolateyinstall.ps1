$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.14.2/nethermind-windows-amd64-1.14.2-08354f9-20220915.zip'
    CheckSum64 = '332c7a1181a1eecebe3b40615c33524c93acf81db9cf578c6a1e8ed78cb34ee680295a5ed3923bc6cb792a0fdb2dec3bfe94da4193ca57bbfdee3f846cdf1c8d'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
