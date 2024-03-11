import-module au

$releases = "https://github.com/NethermindEth/Nethermind/releases"

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(Url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
      "(CheckSum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
      "(CheckSumType64\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
    }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
  $regex   = '\/NethermindEth\/nethermind\/tree\/\d{1,3}\.\d{1,3}\.\d{1,3}$'
  $url     = $download_page.links | Where-Object href -match $regex | Select-Object -First 1 -expand href
  $version = $url -split '\/' | Select-Object -Last 1

  $versionReleasePage = Invoke-WebRequest -Uri "https://github.com/NethermindEth/nethermind/releases/expanded_assets/$version" -UseBasicParsing
  $downloadregex      = "\/NethermindEth\/nethermind\/releases\/download\/$version\/nethermind-$version-.*-windows-x64.zip"
  $url                = $versionReleasePage.links | Where-Object href -match $downloadregex | Select-Object -First 1 -expand href
  $url                = "https://github.com$url"
  return @{ Version = $version; URL64 = $url; ChecksumType64 = 'sha512'; $NoCheckChocoVersion = $true}
}

Update-Package -ChecksumFor 64