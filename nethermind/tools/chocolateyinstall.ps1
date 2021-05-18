$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.10.71/nethermind-windows-amd64-1.10.71-13221de-20210517.zip'
    CheckSum64 = 'ad8c9f0256008cb0d11eef1e84b1e6f034a018445fc520bcbe20c51e88aff63a838f5051f0c3df030985b9f380b5634053f18c2afb69afaf82ea492abb9671ac'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
