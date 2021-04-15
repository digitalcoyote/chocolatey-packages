$ErrorActionPreference = 'Stop';

$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)


$ChocoWebFileArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = (Join-Path $UnzipLocation 'bit-git.tar.gz')
    Url = 'https://github.com/chriswalz/bit/releases/download/v1.1.1/bit_1.1.1_windows_386.tar.gz'
    Url64bit = 'https://github.com/chriswalz/bit/releases/download/v1.1.1/bit_1.1.1_windows_amd64.tar.gz'
    CheckSum = 'ec640f15a5ccf6a3ef1e2997475b883d6625c0ee46c267995b25a690418edd58111409c831024139f5873da4d62dbf1461ae5f34eaef6a6adca1c3cc286ed72e'
    Checksum64 = 'b149cdd3dee88ebf2a7c8fea46077fd0bbbbf6eee91a90df6cdc259d8f68368860a2673b52d1a40fa5063d151e29d4a0746623f04eb7aa330c3e31634eba8618'
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
  
  
