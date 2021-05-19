$ErrorActionPreference = 'Stop';

$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)


$ChocoWebFileArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = (Join-Path $UnzipLocation 'smmdb-client-windows.tar.gz')
    Url = 'https://github.com/Tarnadas/smmdb-client/releases/download/0.4.0/smmdb-client-windows.tar.gz'
    CheckSum = 'c738093b39d1b728f6b7f832d91c4c2a3490495ede3b9665aebd1d974da9d5ee39c731b95555babc70fa7d42aac46e88047170f9d90c444e05829a84bdb7bc7a'
    CheckSumType = 'sha512'
}

Get-ChocolateyWebFile @ChocoWebFileArgs
 
$UnGzArgs = @{
    FileFullPath = (Join-Path $UnzipLocation 'smmdb-client-windows.tar.gz')
    PackageName = $env:ChocolateyPackageName
    Destination = $UnzipLocation
  }
  
  Get-ChocolateyUnzip @UnGzArgs
  
  Remove-Item -Path (Join-Path $UnzipLocation 'smmdb-client-windows.tar.gz')
  Remove-Item -Path (Join-Path $UnzipLocation 'smmdb-client-windows.tar.gz.txt')
  
  
  $UnTarArgs = @{
    FileFullPath = (Join-Path $UnzipLocation 'smmdb-client-windows.tar')
    PackageName = $env:ChocolateyPackageName
    Destination = $UnzipLocation
  }
  
  Get-ChocolateyUnzip @UnTarArgs
  
  Remove-Item -Path (Join-Path $UnzipLocation 'smmdb-client-windows.tar')
  Remove-Item -Path (Join-Path $UnzipLocation 'smmdb-client-windows.tar.txt')

  "Run `smmdb` to start"
  
  
