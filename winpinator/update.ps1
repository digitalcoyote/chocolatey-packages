import-module au

$releases = "https://github.com/swiszczoo/winpinator/releases"

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(Url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
      "(Url\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
      "(CheckSum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
      "(CheckSum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
      "(CheckSumType\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType)'"
      "(CheckSumType64\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
    }
  }
}


function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
  $regex   = '\/swiszczoo\/winpinator\/releases\/download\/v\d{1,3}\.\d{1,3}\.\d{1,3}.*\/winpinator_setup_\d{1,3}\.\d{1,3}\.\d{1,3}.*_x86\.exe$'
  $regex64 = '\/swiszczoo\/winpinator\/releases\/download\/v\d{1,3}\.\d{1,3}\.\d{1,3}.*\/winpinator_setup_\d{1,3}\.\d{1,3}\.\d{1,3}.*_x64\.exe$'
  $url     = $download_page.links | Where-Object href -match $regex | Select-Object -First 1 -expand href
  $url64   = $download_page.links | Where-Object href -match $regex64 | Select-Object -First 1 -expand href
  $version = $url -split '\/|v' | Select-Object -Last 1 -Skip 1
  $url = "https://github.com$url"
  $url64 = "https://github.com$url64"
  return @{ Version = $version; URL64 = $url64; URL = $url; ChecksumType= 'sha512'; ChecksumType64 = 'sha512';}
}

Update-Package -ChecksumFor 64