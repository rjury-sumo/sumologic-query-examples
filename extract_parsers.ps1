$db = Get-Content -Path ./final_searches_db.json -raw | convertfrom-json -depth 10 -AsHashtable

$parsers_hash = @{}
$parsers= @()
foreach ($app in $db.Keys) {
    $parsed = $db[$app] | where {$_.search -match "\| +(?:parse |json |keyvalue |csv |parse regex |extract |split )"}
    write-host "Found $($parsed.Count) parsers in $app"
    $use_cases = @()
    foreach ($search in $parsed) {
        $topic = $search.parent 
        $use_cases += $search.search_name
        $parser_raw = $search.search | select-string -Pattern "\| +(?:parse |json |keyvalue |csv |parse regex |extract |split ).+[\r\n\|$]" -AllMatches
        $parser = (($parser_raw.Matches.value) -join "`n") -replace '[\r\n]+',"`n"

        if ($parser.Length -gt 0) {
            # make a hash of the parser to use as a key
            $key_string = $topic + $parser
    
            $stringAsStream = [System.IO.MemoryStream]::new()
            $writer = [System.IO.StreamWriter]::new($stringAsStream)
            $writer.write($key_string)
            $writer.Flush()
            $stringAsStream.Position = 0
            $key = (Get-FileHash -InputStream $stringAsStream).hash   
    
            # create new parser with merged list of use-cases
            $parsers_hash[$key] = @{
                app = $topic
                use_cases = ($use_cases | sort-object | Get-Unique ) -join ", "
                parser = $parser
            }
        }
    } 
}

foreach ($key in $parsers_hash.Keys) {
    $parsers += $parsers_hash[$key]
}

$parsers  = $parsers | sort-object -Property app,parser
$parsers | ConvertTo-Json -Depth 10 | Out-File -FilePath ./parsers.json -Encoding utf8

$mdp = @{}

foreach ($p in $parsers) {
    $app = $p.app
    if ($mdp.ContainsKey($app)) {
        # append to existing app
        $mdp[$app] += "`n`n## Parser:`n" + '```' + "`n$($p.parser)"+ ' `n```' +"`n### Use Cases:`n$($p.use_cases)`n`n"
    } else {
        # create new app
        $md = "# Parsers For $($p.app)`n`n"
        $md += "## Parser:`n" + '```' + "`n$($p.parser)"+ ' `n```' +"`n### Use Cases:`n$($p.use_cases)`n`n"
        $mdp[$app] = $md
    }
}   

foreach ($app in $mdp.Keys) {
    Write-Host "output parsers file: $app to ./parsers/$($app).md"
    $mdp[$app] | out-file -FilePath "./parsers/$($app).md" -Encoding utf8
}
