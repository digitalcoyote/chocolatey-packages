$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.2.2/Ferdium-win-AutoSetup-6.2.2.exe'
  Checksum = '4271200a953c28136d3f86b481ea64eabc62b54210d11d7d865c4c0f013dc244583b983e8bf87970fabb7432531b032ddd451a0028fcbf9f9232a2a21bafebfd'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
