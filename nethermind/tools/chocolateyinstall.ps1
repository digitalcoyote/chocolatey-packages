$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.10.72/nethermind-windows-amd64-1.10.72-e63bcb9-20210524.zip'
    CheckSum64 = 'eabb5e8bb165fef7757d58fa8c3573729906f66c9c9e94b7a2cf0adbad7f039740eafa085e3c28186bd5061e4b0efc93a1b24e02bf4e84169636cd9612303c6b'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
