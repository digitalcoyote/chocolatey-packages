$ErrorActionPreference = 'Stop';
$pp = Get-PackageParameters
if (!$pp['HyperVisor']) { $pp['HyperVisor'] = "Hyper-V" }
$winversion = Get-cimInstance -ClassName Win32_OperatingSystem | Select-Object Caption, Version, BuildNumber
if ($pp['HyperVisor'] -match 'Hyper-*V') {
  if (((((($winversion.Caption) -match '.*1[0-9]{1}.*Pro.*') -or (($winversion.Caption) -match '.*1[0-9]{1}.*Entreprise.*') -or (($winversion.Caption) -match '.*1[0-9]{1}.*Enterprise.*') -or (($winversion.Caption) -match '.*1[0-9]{1}.*专业.*')) -or (($winversion.Caption) -match '.*1[0-9]{1}.*企业.*')) -or (($winversion.Caption) -match '.*1[0-9]{1}.*Корпоративная.*')) -and ($winversion.BuildNumber -gt 17134)) {
    if ((Get-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V).State -eq "Disabled") {
      Write-Output "Installing Hyper-V"
      Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All -NoRestart
    }
  }
  else {
    throw "Hyper-V requires Windows 10 Pro/Enterprise with a build version > 17134"
  }
}
elseif (!$pp['HyperVisor'] -match 'Virtual\s*Box') {
  throw "$($pp['HyperVisor']) is not a valid HyperVisor for this machine."
}

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/S'
  Url64bit = 'https://github.com/canonical/multipass/releases/download/v1.15.1/multipass-1.15.1+win-win64.msi'
  Checksum64 = '98e03499d406066e56ee276a35217fc391897282cfc77ff694077715bfb3d2f78cfd4c555c65c61c923ce38630e70e06a963428f11002ffa1dd770a1f16264d5'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @args
  

Install-BinFile `
  -Name $env:ChocolateyPackageName `
  -Path "$env:ProgramFiles\Multipass\bin\multipass.exe" `

if ($pp['HyperVisor'] -match 'Virtual\s*Box') {

  Write-Host "Virtual-Box must be installed to use this option"
  & "$env:ProgramFiles\Multipass\bin\multipass.exe" set local.driver=virtualbox
}
