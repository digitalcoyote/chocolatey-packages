$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.10.77/nethermind-windows-amd64-1.10.77-8eaabaa-20210713.zip'
    CheckSum64 = 'c52c1f306158f9eb1b6d5ceac0628c5306807d3417b1322eaec20a204e345cd81bb72ccb91753a73d3e713b156b331b2d910d39fa6f7e7cf729a8de83d48f50f'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
