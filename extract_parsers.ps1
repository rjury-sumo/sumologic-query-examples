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

$md = "# Parsers Index`n`n"
foreach ($p in $parsers) {
    $md += "## App: $($p.app)`n### Parser:`n" + '```' + "`n$($p.parser)"+ '```' +"`n### Use Cases:`n$($p.use_cases)`n`n"
}    
$md | out-file -FilePath ./parsers.md -Encoding utf8
