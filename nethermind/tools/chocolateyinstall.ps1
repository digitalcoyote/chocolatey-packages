$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.10.51/nethermind-windows-amd64-1.10.51-1a20c48-20210330.zip'
    CheckSum64 = '6a4144a278b4018acf75cce124fa17034d0080247621c37c5352fadda3abf3629b1ffd19dba8e69b7d1ae70165cfd06d87c3461821c7e93d610abcdb6a3998a0'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
