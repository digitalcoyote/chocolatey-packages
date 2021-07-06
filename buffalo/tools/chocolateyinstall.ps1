$ErrorActionPreference = 'Stop';

$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)


$ChocoWebFileArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = (Join-Path $UnzipLocation 'buffalo.tar.gz')
    Url = 'https://github.com/gobuffalo/buffalo/releases/download/v0.16.25/buffalo_0.16.25_windows_i386.tar.gz'
    Url64bit = 'https://github.com/gobuffalo/buffalo/releases/download/v0.16.25/buffalo_0.16.25_windows_x86_64.tar.gz'
    CheckSum = 'df39ac89f2c57d861c6856fbddf163480669ad780fe0ddbe256cb4b926010f940bd5a3783c6c6b870bcd37b873d706e1ef331b5c67d34ee963882bc76e233645'
    Checksum64 = '9476b32f7ef9932ed006a29b61de7c848e5cf96869bbf3afb11f1d50335f6e313f099ab8af659112705a466c94c8f559b79dd3c5def74e76faae9f4fe8178dbc'
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
  
  
