$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.13.4/nethermind-windows-amd64-1.13.4-3e5972c-20220630.zip'
    CheckSum64 = 'be3d179b08b12e405b6a49ace8b370e643b0dabfa6cfbf067c1122aa1c338adae0a6eeb66c04dca4adec86d1322523fc9ccbfe82f8683f3e181b613421074622'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
