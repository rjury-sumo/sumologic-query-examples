$db = Get-Content -Path ./logs_searches.json -raw | convertfrom-json -depth 10 -AsHashtable

$parsers_hash = @{}
$parsers_db = @()

$parsers = $db | where {$_.search -match "\| +(?:parse |json |keyvalue |csv |parse regex |extract |split )"}
$parse_only = @()

# get only the lines up to the last parse/extract line
foreach ($s in $parsers) {
    $app = $s.app
    $search = $s.search
    $use_case = $s.use_case
    
    $pattern = "(?i)(?:parse | json |keyvalue |csv |extract |split )"  
    $n = 0
    $max_line = 0
    $lines = $search -split "\r|\n"

    foreach ($line in $lines) {
        $n += 1
       # write-host "Line: $($n) $line"
        If ($line -match $pattern ) {
            $max_line = $n
           # Write-Host "Matched $n max: $max_line"
            $up_to_max =  $lines[0..($max_line - 1)] -join "`n"
        }

    }
    # write-host "Max line: $max_line"
    # write-host $up_to_max

    $parser_item = @{
        app = $app
        parser = $up_to_max
        use_case = $use_case
    }

    $parsers_hash[$use_case] = $parser_item
    $parsers_db += $parser_item
}

# foreach ($key in $parsers_hash.Keys) {
#     $parsers += $parsers_hash[$key]
# }

$parsers_db  = $parsers_db | sort-object -Property use_case
$parsers_db | ConvertTo-Json -Depth 10 | Out-File -FilePath ./parsers.json -Encoding utf8

$parsers_hash = @{}

# make a db of the parsers as a hash table by app name
foreach ($p in $parsers_db) {
    $app = $p.app
    if ($parsers_hash.ContainsKey($app)) {
        $parsers_hash[$app] += $p
    } else {
        $parsers_hash[$app] = @()
        $parsers_hash[$app] += $p
    }
}

# format as markdown per app
$mdp = @{}
foreach ($app in $parsers_hash.Keys) {
        $md = "# Parsers For $app`n`n"
    foreach( $row in $parsers_hash[$app]) {
        $a = $row.app
        $u = $row.use_case
       $p = $row.parser #-replace '\r|\n','<br>' ).replace('|','\|')
       # $p = ($row.parser).replace('|','\|')
        $md += "**$u**`n" + '```' + "`n" + $p + "`n" + '```' + "`n`n"

    }
    $mdp[$app] = $md
}

foreach ($app in $mdp.Keys) {
    Write-Host "output parsers file: $app to ./parsers/$($app).md"
    $mdp[$app] | out-file -FilePath "./parsers/$($app).md" -Encoding utf8
}


