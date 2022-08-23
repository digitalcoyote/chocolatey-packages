$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.14.0/nethermind-windows-amd64-1.14.0-60f920b-20220822.zip'
    CheckSum64 = 'ae8e2ca6cb407c7ba5ff4d7c9c6352240288e9c80f199781355602b5ac0f92a327b28ec1365d432b18bbb3e51cd72d0e54012133dae32bfec3194b97f9115b47'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
