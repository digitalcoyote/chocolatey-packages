import-module au

$releases = "https://github.com/JanDeDobbeleer/oh-my-posh/releases"

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(Url64bit\s*=\s*)('.*')"       = "`$1'$($Latest.URL64)'"
            "(Checksum64\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum64)'"
            "(ChecksumType64\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
        }
    }
}

function Get-ReleaseVersion($release, [string] $prefix) {
    if ($prefix) {
        if ($release.name -and $release.name.StartsWith($prefix)) {
            $release.name.Substring($prefix.Length)
        } elseif ($release.tag_name -and $release.tag_name.StartsWith($prefix)) {
            $release.tag_name.Substring($prefix.Length)
        } else {
            return $null
        }
    } elseif ($release.tag_name) {
        $release.tag_name
    } elseif ($release.name) {
        $release.name
    }
}

function global:au_GetLatest {
    $token = $env:github_api_key
    $headers = @{
        'User-Agent' = 'digitalcoyote'
    }
    if ($token) {
        $headers['Authorization'] = ("token {0}" -f $token)
    } else {
        Write-Warning "No auth token"
    }

    $project = "JanDeDobbeleer/oh-my-posh"
    $releasesUrl = "https://api.github.com/repos/$project/releases"

    $releases = Invoke-RestMethod -Method Get -Uri "$releasesUrl" -Headers $headers
    $release = $releases | Select-Object -First 1

    $assets = Invoke-RestMethod -Method Get -Uri "$($release.assets_url)?per_page=100" -Headers $headers

    # Target the new MSIX asset
    $asset64 = $assets | Where-Object { $_.name -eq "install-x64.msix" } | Select-Object -First 1
    if (-not $asset64) {
        throw "Could not find 'install-x64.msix' in the latest release."
    }

    # Extract SHA-256 directly from upstream checksums.txt if available
    $checksumAsset = $assets | Where-Object { $_.name -eq 'checksums.txt' } | Select-Object -First 1
    $checksum64 = $null

    if ($checksumAsset) {
        $checksumContent = Invoke-RestMethod -Method Get -Uri $checksumAsset.browser_download_url -Headers $headers
        if ($checksumContent -match "(?m)^([a-fA-F0-9]{64})\s+install-x64\.msix$") {
            $checksum64 = $Matches[1]
        }
    }

    $url64 = $asset64.browser_download_url
    $version = Get-ReleaseVersion $release "v"
    $releaseNotes = $release.body.Replace("# ", "## ")

    return @{ 
        Version        = $version
        URL64          = $url64
        Checksum64     = $checksum64
        ChecksumType64 = 'sha256'
        ReleaseNotes   = $releaseNotes 
    }
}

Update-Package -ChecksumFor 64