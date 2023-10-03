$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.5.1/Ferdium-win-AutoSetup-6.5.1.exe'
  Checksum = 'b2958d94bc8c251e7b280bbd6b37de8176b1d69f4e7333a6fdff9ce640ddcceed9a119fd28cfffb229ae4a2a9bd5804a67aa8027e0a87ba5802e4a166796e914'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
