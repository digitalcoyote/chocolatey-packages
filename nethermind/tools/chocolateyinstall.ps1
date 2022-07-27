$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.13.5/nethermind-windows-amd64-1.13.5-c6b8a24-20220727.zip'
    CheckSum64 = 'cccf25ced77d6b1b19bceeade56f7a6ae81115611f8be3eb8bc3be4b002662e89375986782725950a40705b364f05807c151a40135367637c67296453c759ffe'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
