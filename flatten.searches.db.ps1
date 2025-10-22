$db = Get-Content -Path ./final_searches_db.json -Raw | convertfrom-json -depth 10 -AsHashtable

$dedup = @{}

$logs_flattened = @()
$metrics_flattened = @()

 Foreach ($key in $db.Keys) {
    write-host "Processing key: $key"
    $searches = $db[$key]
    
    write-host "Found $($searches.Count) searches for key: $key"

    foreach ($search in $searches) {
        $app = $search['app_topic'].split('/')[0] 
        $path = ($search['source_path'].Split('/')[-1]).Replace($app + ' - ', '')
        $search_name = $search['search_name'].split('/')[-1]
        $use_case = "$app/$path/$search_name"
       #write-host "Processing search use case: $use_case"

        $item = @{
            use_case = $use_case
            app = $app
            search_name = $search_name
            type = $search['type']
            search = $search['search']
        }

        $dedup[$use_case] = $item
    }

   

 }

foreach ($s in $dedup.Keys) {
    if ($dedup[$s].type -eq 'logs') {
        $logs_flattened += $dedup[$s]
    } elseif ($dedup[$s].type -eq 'metrics') {
        $metrics_flattened += $dedup[$s]
    }
}

$logs_flattened | convertto-json | Out-File -FilePath ./logs_searches.json -Encoding utf8
$logs_flattened | select-object -Property use_case,search | convertto-json | Out-File -FilePath ./logs_searches_min.json -Encoding utf8
$metrics_flattened | convertto-json | Out-File -FilePath ./metrics_searches.json -Encoding utf8
$metrics_flattened | select-object -Property use_case,search | convertto-json | Out-File -FilePath ./metrics_searches_min.json -Encoding utf8

write-host "Total unique log searches: $($logs_flattened.Count)"
write-host "Total unique metric searches: $($metrics_flattened.Count)"  