import-module au

$releases = "https://github.com/tobya/DocTo/releases/"

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(URL32\s*=\s*)('.*')" = "`$1'$($Latest.URL32)'"
      "(URL\s*=\s*)('.*')" = "`$1'$($Latest.URL)'"
      "(Checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
      "(Checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum)'"
      "(ChecksumType32\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType32)'"
      "(ChecksumType\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType)'"
    }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
  $regex   = '/tobya/DocTo/tree/[vV]\d{1,4}\.{0,1}\d{0,4}\.{0,1}\d{0,4}.*'
  $url = $download_page.links | Where-Object href -match $regex | Select-Object -First 1 -expand href
  $version = $url -split '\/|V' | Select-Object -Last 1
  $url = "https://github.com/tobya/DocTo/releases/download/v$version/docto_32.zip"
  $url64 = "https://github.com/tobya/DocTo/releases/download/v$version/docto_64.zip"

  return @{ Version = $version; URL = $url; URL64= $url64; ChecksumType32 = 'sha512'; ChecksumType = 'sha512';}
}

Update-Package -ChecksumFor 32