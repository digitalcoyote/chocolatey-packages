import-module au

$releases = "https://github.com/ferdium/ferdium-app/releases"

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(Url64bit\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
      "(Url\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
      "(Checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
      "(Checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
      "(ChecksumType64\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
      "(ChecksumType\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType32)'"
    }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
  $regex   = '\/ferdium\/ferdium-app\/tree\/v\d{1,4}\.\d{1,4}\.\d{1,4}.*$'
  $url64     = $download_page.links | Where-Object href -match $regex | Select-Object -First 1 -expand href
  $version = $url64 -split '\/|v' | Select-Object -Last 1
  $url32 = "https://github.com/ferdium/ferdium-app/releases/download/v$version/Ferdium-win-installer-$version-ia32.msi"
  $url64 = "https://github.com/ferdium/ferdium-app/releases/download/v$version/Ferdium-win-installer-$version-x64.msi"
  $releaseNotes = "https://github.com/ferdium/ferdium-app/releases/tag/v$version"
  $versionParts = $version -split '-'
  $versionParts[1] = $versionParts[1].replace('.', '-')  
  $version = $versionParts -join '-'
  return @{ Version = $version; URL64 = $url64; URL = $url32; ChecksumType64 = 'sha512'; ChecksumType32 = 'sha512'; ReleaseNotes = $releaseNotes}
}

Update-Package -ChecksumFor all
