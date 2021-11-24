$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.12.0/nethermind-windows-amd64-1.12.0-d6c34e5-20211124.zip'
    CheckSum64 = '03bf013c5481bcd97e16ccdf44030b73b74787284b527528cf7fc3f485bed81a4a5ff2b50fdb6b4263204264f4c8bcaa8e5ecb8f3f478b8432a538a47594865c'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
