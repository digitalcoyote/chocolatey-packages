$ErrorActionPreference = 'Stop';

$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)


$ChocoWebFileArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = (Join-Path $UnzipLocation 'buffalo.tar.gz')
    Url = 'https://github.com/gobuffalo/cli/releases/download/v0.18.14/buffalo_0.18.14_Windows_i386.tar.gz'
    Url64bit = 'https://github.com/gobuffalo/cli/releases/download/v0.18.14/buffalo_0.18.14_Windows_x86_64.tar.gz'
    CheckSum = 'afc4b81b239c87ba6f4ec4a9061cb3e1befb38a96cce2f49623681b0c95412b44dc67b831053239e3a3d6612a9beba95d24cb8bf537edf0e36cb9c64b32dd731'
    Checksum64 = '2e29669fde8c73794c96e97351bf362563e78cd816f247cb9f350ce009789773b0a943364df4eada140fd8dad8ee42e9437a7216c1bc2168d3cd7b2c0d539550'
    CheckSumType = 'sha512'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @ChocoWebFileArgs
 
$UnGzArgs = @{
    FileFullPath = (Join-Path $UnzipLocation 'buffalo.tar.gz')
    PackageName = $env:ChocolateyPackageName
    Destination = $UnzipLocation
  }
  
  Get-ChocolateyUnzip @UnGzArgs
  
  Remove-Item -Path (Join-Path $UnzipLocation 'buffalo.tar.gz')
  Remove-Item -Path (Join-Path $UnzipLocation 'buffalo.tar.gz.txt')
  
  
  $UnTarArgs = @{
    FileFullPath = (Join-Path $UnzipLocation 'buffalo.tar')
    PackageName = $env:ChocolateyPackageName
    Destination = $UnzipLocation
  }
  
  Get-ChocolateyUnzip @UnTarArgs
  
  Remove-Item -Path (Join-Path $UnzipLocation 'buffalo.tar')
  Remove-Item -Path (Join-Path $UnzipLocation 'buffalo.tar.txt')
  
  
