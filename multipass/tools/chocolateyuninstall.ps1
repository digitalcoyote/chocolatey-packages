﻿Uninstall-ChocolateyPackage `
  -PackageName $env:ChocolateyPackageName `
  -FileType 'exe' `
  -SilentArgs '/S' `
  -File "$env:ProgramFiles\Multipass\Uninstall.exe"

  Uninstall-BinFile -Name $env:ChocolateyPackageName -Path "$env:ProgramFiles\Multipass\bin\multipass.exe"