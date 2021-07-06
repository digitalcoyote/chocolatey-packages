$ErrorActionPreference = 'Stop';

$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)


$ChocoWebFileArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = (Join-Path $UnzipLocation 'bit-git.tar.gz')
    Url = 'https://github.com/chriswalz/bit/releases/download/v1.1.2/bit_1.1.2_windows_386.tar.gz'
    Url64bit = 'https://github.com/chriswalz/bit/releases/download/v1.1.2/bit_1.1.2_windows_amd64.tar.gz'
    CheckSum = '787cd26fe7cba3acecb5c59a5ce34e759b87365d49f44e3a799573ece29461a0776ccd3cb556a2959bfad77576a722c4f44f032b52ff940b3477570dd6d1152f'
    Checksum64 = '3ed09d8cf4eda299af06095ef731b409e305023a28d119013bef3d748811e7a2dccb1149b214091729ea4fefaebc9c4ffd5b94d9f3769731aa2b9cc0488f7dea'
    CheckSumType = 'sha512'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @ChocoWebFileArgs
 
$UnGzArgs = @{
    FileFullPath = (Join-Path $UnzipLocation 'bit-git.tar.gz')
    PackageName = $env:ChocolateyPackageName
    Destination = $UnzipLocation
  }
  
  Get-ChocolateyUnzip @UnGzArgs
  
  Remove-Item -Path (Join-Path $UnzipLocation 'bit-git.tar.gz')
  Remove-Item -Path (Join-Path $UnzipLocation 'bit-git.tar.gz.txt')
  
  
  $UnTarArgs = @{
    FileFullPath = (Join-Path $UnzipLocation 'bit-git.tar')
    PackageName = $env:ChocolateyPackageName
    Destination = $UnzipLocation
  }
  
  Get-ChocolateyUnzip @UnTarArgs
  
  Remove-Item -Path (Join-Path $UnzipLocation 'bit-git.tar')
  Remove-Item -Path (Join-Path $UnzipLocation 'bit-git.tar.txt')
  
  
