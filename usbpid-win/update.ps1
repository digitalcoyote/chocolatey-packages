import-module au

$releases = "https://github.com/dorssel/usbipd-win/releases"

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(URL\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
      "(Checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
      "(ChecksumType\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
    }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
  $regex   = '\/dorssel\/usbipd-win\/releases\/tag\/v[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}$'
  $url     = $download_page.links | Where-Object href -match $regex | Select-Object -First 1 -expand href
  $version = $url -split '\/|v' | Select-Object -Last 1
  $url = "https://github.com/dorssel/usbipd-win/releases/download/v${version}/usbipd-win_${version}_x64.msi"
  return @{ Version = $version; URL64 = $url; ChecksumType64 = 'sha512';}
}

Update-Package -ChecksumFor 64