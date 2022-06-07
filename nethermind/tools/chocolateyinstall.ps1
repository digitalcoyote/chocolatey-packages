$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.13.2/nethermind-windows-amd64-1.13.2-795dd1e-20220607.zip'
    CheckSum64 = 'ea2c391a4be8f367da24315a7c654d7350f367d3765596242529585861207a2e1a99e4a58b88848cd05e5611c66440e7444973ce809fb9b68948d4d6f94732fc'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
