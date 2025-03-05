# Parsers For Global Intelligence for Apache

## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
 `n```
### Use Cases:
Bot Connections Percent Daily AVERAGE:   My Server v  Benchmark, Bot Connections Percent: Daily Distance From Benchmark, Client Errors Per Request Daily AVERAGE:   My Server v  Benchmark, Client Errors Per Request: Daily Distance From Benchmark, Connections Per Second Daily AVERAGE:   My Server v  Benchmark, Connections Per Second: Daily Distance From Benchmark, Connections Per Seconds Daily AVERAGE:   My Server v  Benchmark, GB Per Second Daily AVERAGE:   My Server v  Benchmark, GB Per Second: Daily Distance From Benchmark, GB Served Per Request Daily AVERAGE:   My Server v  Benchmark, GB Served Per Request Daily AVERAGE: My Server v  Benchmark, GB Served Per Request: Daily Distance From Benchmark, GB Served per Request: Daily Distance From Benchmark, HTTP DELETE Share of Requests Daily AVERAGE:   My Server v  Benchmark, HTTP DELETE Share of Requests: Daily Distance From Benchmark, HTTP POST Share of Requests Daily AVERAGE:   My Server v  Benchmark, HTTP POST Share of Requests: Daily Distance From Benchmark, Latency per Request Daily AVERAGE:   My Server v  Benchmark, Latency per Request: Daily Distance from Benchmark, My Company: Visitor Platforms Over Time, Requests Per Connection Daily AVERAGE:   My Server v  Benchmark, Requests Per Connection: Daily Distance From Benchmark, Requests Per Second Daily AVERAGE:  My Server v  Benchmark, Requests Per Second: Daily Distance From Benchmark, Server Errors Per Request Daily AVERAGE:   My Server v  Benchmark, Server Errors Per Request Daily AVERAGE: My Server v  Benchmark, Server Errors Per Request: Daily Distance From Benchmark, Visitor Platforms: My Company v Benchmark



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| parse regex " (?<seconds>\d+)/(?<microseconds>\d+)$"
 `n```
### Use Cases:
Bot Connections Percent Daily AVERAGE:   My Server v  Benchmark, Bot Connections Percent: Daily Distance From Benchmark, Client Errors Per Request Daily AVERAGE:   My Server v  Benchmark, Client Errors Per Request: Daily Distance From Benchmark, Connections Per Second Daily AVERAGE:   My Server v  Benchmark, Connections Per Second: Daily Distance From Benchmark, Connections Per Seconds Daily AVERAGE:   My Server v  Benchmark, GB Per Second Daily AVERAGE:   My Server v  Benchmark, GB Per Second: Daily Distance From Benchmark, GB Served Per Request Daily AVERAGE:   My Server v  Benchmark, GB Served Per Request Daily AVERAGE: My Server v  Benchmark, GB Served per Request: Daily Distance From Benchmark, GB Served Per Request: Daily Distance From Benchmark, HTTP DELETE Share of Requests Daily AVERAGE:   My Server v  Benchmark, HTTP DELETE Share of Requests: Daily Distance From Benchmark, HTTP POST Share of Requests Daily AVERAGE:   My Server v  Benchmark, HTTP POST Share of Requests: Daily Distance From Benchmark, Latency per Request Daily AVERAGE:   My Server v  Benchmark, Latency per Request: Daily Distance from Benchmark, Requests Per Connection Daily AVERAGE:   My Server v  Benchmark, Requests Per Connection: Daily Distance From Benchmark, Requests Per Second Daily AVERAGE:  My Server v  Benchmark, Requests Per Second: Daily Distance From Benchmark, Server Errors Per Request Daily AVERAGE:   My Server v  Benchmark, Server Errors Per Request Daily AVERAGE: My Server v  Benchmark, Server Errors Per Request: Daily Distance From Benchmark



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| parse regex field=apache_log_message "\((?<device>iPhone).+? CPU iPhone OS (?<version>.+?) like Mac"  nodrop
| parse regex field=apache_log_message "\((?<device>iPad).+? CPU OS (?<version>.+?) like Mac"  nodrop
| parse regex field=apache_log_message " (?<device>Android) (?<version>[\d\.]+)" nodrop
| parse regex field=apache_log_message "(?<device>SAMSUNG).+?(?<version>(?:GT|SGH|SPH|SCH))" nodrop
| parse regex field=version "(?<version>\d{1,3}\.\d{1,3})"
 `n```
### Use Cases:
Bot Connections Percent Daily AVERAGE:   My Server v  Benchmark, Bot Connections Percent: Daily Distance From Benchmark, Client Errors Per Request Daily AVERAGE:   My Server v  Benchmark, Client Errors Per Request: Daily Distance From Benchmark, Connections Per Second Daily AVERAGE:   My Server v  Benchmark, Connections Per Second: Daily Distance From Benchmark, Connections Per Seconds Daily AVERAGE:   My Server v  Benchmark, Desktop OS Version: My Company v Benchmark, GB Per Second Daily AVERAGE:   My Server v  Benchmark, GB Per Second: Daily Distance From Benchmark, GB Served Per Request Daily AVERAGE:   My Server v  Benchmark, GB Served Per Request Daily AVERAGE: My Server v  Benchmark, GB Served per Request: Daily Distance From Benchmark, GB Served Per Request: Daily Distance From Benchmark, HTTP DELETE Share of Requests Daily AVERAGE:   My Server v  Benchmark, HTTP DELETE Share of Requests: Daily Distance From Benchmark, HTTP POST Share of Requests Daily AVERAGE:   My Server v  Benchmark, HTTP POST Share of Requests: Daily Distance From Benchmark, Latency per Request Daily AVERAGE:   My Server v  Benchmark, Latency per Request: Daily Distance from Benchmark, My Company: Visitor Platforms Over Time, Popular Mobile Device Versions: My Company v Benchmark, Requests Per Connection Daily AVERAGE:   My Server v  Benchmark, Requests Per Connection: Daily Distance From Benchmark, Requests Per Second Daily AVERAGE:  My Server v  Benchmark, Requests Per Second: Daily Distance From Benchmark, Server Errors Per Request Daily AVERAGE:   My Server v  Benchmark, Server Errors Per Request Daily AVERAGE: My Server v  Benchmark, Server Errors Per Request: Daily Distance From Benchmark, Visitor Platforms: My Company v Benchmark



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| parse regex field=url "^/[^\?]+?\.(?<type>[a-zA-Z]{2,4})$"
| parse regex field=url "/\S+?(?<email_prefix>(?:%40|@)[^.]+?)\.\w+" nodrop
 `n```
### Use Cases:
Bot Connections Percent Daily AVERAGE:   My Server v  Benchmark, Bot Connections Percent: Daily Distance From Benchmark, Client Errors Per Request Daily AVERAGE:   My Server v  Benchmark, Client Errors Per Request: Daily Distance From Benchmark, Connections Per Second Daily AVERAGE:   My Server v  Benchmark, Connections Per Second: Daily Distance From Benchmark, Connections Per Seconds Daily AVERAGE:   My Server v  Benchmark, Desktop OS Version: My Company v Benchmark, GB Per Second Daily AVERAGE:   My Server v  Benchmark, GB Per Second: Daily Distance From Benchmark, GB Served Per Request Daily AVERAGE:   My Server v  Benchmark, GB Served Per Request Daily AVERAGE: My Server v  Benchmark, GB Served Per Request: Daily Distance From Benchmark, GB Served per Request: Daily Distance From Benchmark, HTTP DELETE Share of Requests Daily AVERAGE:   My Server v  Benchmark, HTTP DELETE Share of Requests: Daily Distance From Benchmark, HTTP POST Share of Requests Daily AVERAGE:   My Server v  Benchmark, HTTP POST Share of Requests: Daily Distance From Benchmark, Latency per Request Daily AVERAGE:   My Server v  Benchmark, Latency per Request: Daily Distance from Benchmark, Media Types Served: My Company v Benchmark, My Company: Visitor Platforms Over Time, Popular Mobile Device Versions: My Company v Benchmark, Requests Per Connection Daily AVERAGE:   My Server v  Benchmark, Requests Per Connection: Daily Distance From Benchmark, Requests Per Second Daily AVERAGE:  My Server v  Benchmark, Requests Per Second: Daily Distance From Benchmark, Server Errors Per Request Daily AVERAGE:   My Server v  Benchmark, Server Errors Per Request Daily AVERAGE: My Server v  Benchmark, Server Errors Per Request: Daily Distance From Benchmark, Top 10 Bots Observed: My Company v Benchmark, Visitor Platforms: My Company v Benchmark



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| parse regex field=user_agent "(?<bot_name>facebook)externalhit?\W+" nodrop
| parse regex field=user_agent "Feedfetcher-(?<bot_name>Google?)\S+" nodrop
| parse regex field=user_agent "(?<bot_name>PaperLiBot?)/.+" nodrop
| parse regex field=user_agent "(?<bot_name>TweetmemeBot?)/.+" nodrop
| parse regex field=user_agent "(?<bot_name>msn?)bot\W" nodrop
| parse regex field=user_agent "(?<bot_name>Nutch?)-.+" nodrop
| parse regex field=user_agent "(?<bot_name>Google?)bot\W" nodrop
| parse regex field=user_agent "Feedfetcher-(?<bot_name>Google?)\W" nodrop
| parse regex field=user_agent "(?<bot_name>Yahoo?)!\s+Slurp[;/].+" nodrop
| parse regex field=user_agent "(?<bot_name>bing?)bot\W" nodrop
| parse regex field=user_agent "(?<bot_name>Bing?)Preview\W" nodrop
| parse regex field=user_agent "(?<bot_name>Sogou?)\s+web\s" nodrop
| parse regex field=user_agent "(?<bot_name>Yandex?)Bot\W" nodrop
| parse regex field=user_agent "(?<bot_name>rogerbot?)\W" nodrop
| parse regex field=user_agent "(?<bot_name>AddThis\.com?)\s+robot\s+" nodrop
| parse regex field=user_agent "(?<bot_name>ShareThis?)Fetcher/.+" nodrop
| parse regex field=user_agent "(?<bot_name>Ahrefs?)Bot/.+" nodrop
| parse regex field=user_agent "(?<bot_name>MetaURI?)\s+API/.+" nodrop
| parse regex field=user_agent "(?<bot_name>Showyou?)Bot\s+" nodrop
| parse regex field=user_agent "(?<bot_name>Google?)Producer;" nodrop
| parse regex field=user_agent "(?<bot_name>Ezooms?)\W" nodrop
| parse regex field=user_agent "(?<bot_name>Rockmelt?)Embedder\s+" nodrop
| parse regex field=user_agent "(?<bot_name>Sosospider?)\W" nodrop
| parse regex field=user_agent "(?<bot_name>Baidu?)spider" nodrop
| parse regex field=user_agent "(?<bot_name>Exabot?)\W" nodrop
 `n```
### Use Cases:
Bot Connections Percent Daily AVERAGE:   My Server v  Benchmark, Bot Connections Percent: Daily Distance From Benchmark, Connections Per Second: Daily Distance From Benchmark, Connections Per Seconds Daily AVERAGE:   My Server v  Benchmark, Requests Per Connection Daily AVERAGE:   My Server v  Benchmark, Requests Per Connection: Daily Distance From Benchmark, Requests Per Second Daily AVERAGE:  My Server v  Benchmark, Requests Per Second: Daily Distance From Benchmark



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| parse regex field=user_agent "(?<bot_name>facebook)externalhit?\W+" nodrop
| parse regex field=user_agent "Feedfetcher-(?<bot_name>Google?)\S+" nodrop
| parse regex field=user_agent "(?<bot_name>PaperLiBot?)/.+" nodrop
| parse regex field=user_agent "(?<bot_name>TweetmemeBot?)/.+" nodrop
| parse regex field=user_agent "(?<bot_name>msn?)bot\W" nodrop
| parse regex field=user_agent "(?<bot_name>Nutch?)-.+" nodrop
| parse regex field=user_agent "(?<bot_name>Google?)bot\W" nodrop
| parse regex field=user_agent "Feedfetcher-(?<bot_name>Google?)\W" nodrop
| parse regex field=user_agent "(?<bot_name>Yahoo?)!\s+Slurp[;/].+" nodrop
| parse regex field=user_agent "(?<bot_name>bing?)bot\W" nodrop
| parse regex field=user_agent "(?<bot_name>Bing?)Preview\W" nodrop
| parse regex field=user_agent "(?<bot_name>Sogou?)\s+web\s" nodrop
| parse regex field=user_agent "(?<bot_name>Yandex?)Bot\W" nodrop
| parse regex field=user_agent "(?<bot_name>rogerbot?)\W" nodrop
| parse regex field=user_agent "(?<bot_name>AddThis\.com?)\s+robot\s+" nodrop
| parse regex field=user_agent "(?<bot_name>ShareThis?)Fetcher/.+" nodrop
| parse regex field=user_agent "(?<bot_name>Ahrefs?)Bot/.+" nodrop
| parse regex field=user_agent "(?<bot_name>MetaURI?)\s+API/.+" nodrop
| parse regex field=user_agent "(?<bot_name>Showyou?)Bot\s+" nodrop
| parse regex field=user_agent "(?<bot_name>Google?)Producer;" nodrop
| parse regex field=user_agent "(?<bot_name>Rockmelt?)Embedder\s+" nodrop
| parse regex field=user_agent "(?<bot_name>Sosospider?)\W" nodrop
| parse regex field=user_agent "(?<bot_name>Baidu?)spider" nodrop
| parse regex field=user_agent "(?<bot_name>Exabot?)\W" nodrop
 `n```
### Use Cases:
Bot Connections Percent Daily AVERAGE:   My Server v  Benchmark, Bot Connections Percent: Daily Distance From Benchmark, Client Errors Per Request Daily AVERAGE:   My Server v  Benchmark, Client Errors Per Request: Daily Distance From Benchmark, Connections Per Second Daily AVERAGE:   My Server v  Benchmark, Connections Per Second: Daily Distance From Benchmark, Connections Per Seconds Daily AVERAGE:   My Server v  Benchmark, Desktop OS Version: My Company v Benchmark, GB Per Second Daily AVERAGE:   My Server v  Benchmark, GB Per Second: Daily Distance From Benchmark, GB Served Per Request Daily AVERAGE:   My Server v  Benchmark, GB Served Per Request Daily AVERAGE: My Server v  Benchmark, GB Served per Request: Daily Distance From Benchmark, GB Served Per Request: Daily Distance From Benchmark, HTTP DELETE Share of Requests Daily AVERAGE:   My Server v  Benchmark, HTTP DELETE Share of Requests: Daily Distance From Benchmark, HTTP POST Share of Requests Daily AVERAGE:   My Server v  Benchmark, HTTP POST Share of Requests: Daily Distance From Benchmark, Latency per Request Daily AVERAGE:   My Server v  Benchmark, Latency per Request: Daily Distance from Benchmark, My Company: Visitor Platforms Over Time, Popular Mobile Device Versions: My Company v Benchmark, Requests Per Connection Daily AVERAGE:   My Server v  Benchmark, Requests Per Connection: Daily Distance From Benchmark, Requests Per Second Daily AVERAGE:  My Server v  Benchmark, Requests Per Second: Daily Distance From Benchmark, Server Errors Per Request Daily AVERAGE:   My Server v  Benchmark, Server Errors Per Request Daily AVERAGE: My Server v  Benchmark, Server Errors Per Request: Daily Distance From Benchmark, Top 10 Bots Observed: My Company v Benchmark, Visitor Platforms: My Company v Benchmark



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| parse regex field=user_agent "(?<os>Mac OS) (?<version>[^;\)]+?)(?:;|\))" nodrop
| parse regex field=user_agent "(?<os>Windows)(?: NT | )(?<version>[\d.]+)" nodrop
| parse regex field=user_agent "(?<os>Linux) (?<version>\S+?)(?:\)|;)" nodrop
| parse regex field=version "(?<version>[A-Za-z /]*\d{1,3}\.\d{1,3})" nodrop
 `n```
### Use Cases:
Bot Connections Percent Daily AVERAGE:   My Server v  Benchmark, Bot Connections Percent: Daily Distance From Benchmark, Client Errors Per Request Daily AVERAGE:   My Server v  Benchmark, Client Errors Per Request: Daily Distance From Benchmark, Connections Per Second Daily AVERAGE:   My Server v  Benchmark, Connections Per Second: Daily Distance From Benchmark, Connections Per Seconds Daily AVERAGE:   My Server v  Benchmark, Desktop OS Version: My Company v Benchmark, GB Per Second Daily AVERAGE:   My Server v  Benchmark, GB Per Second: Daily Distance From Benchmark, GB Served Per Request Daily AVERAGE:   My Server v  Benchmark, GB Served Per Request Daily AVERAGE: My Server v  Benchmark, GB Served Per Request: Daily Distance From Benchmark, GB Served per Request: Daily Distance From Benchmark, HTTP DELETE Share of Requests Daily AVERAGE:   My Server v  Benchmark, HTTP DELETE Share of Requests: Daily Distance From Benchmark, HTTP POST Share of Requests Daily AVERAGE:   My Server v  Benchmark, HTTP POST Share of Requests: Daily Distance From Benchmark, Latency per Request Daily AVERAGE:   My Server v  Benchmark, Latency per Request: Daily Distance from Benchmark, My Company: Visitor Platforms Over Time, Requests Per Connection Daily AVERAGE:   My Server v  Benchmark, Requests Per Connection: Daily Distance From Benchmark, Requests Per Second Daily AVERAGE:  My Server v  Benchmark, Requests Per Second: Daily Distance From Benchmark, Server Errors Per Request Daily AVERAGE:   My Server v  Benchmark, Server Errors Per Request Daily AVERAGE: My Server v  Benchmark, Server Errors Per Request: Daily Distance From Benchmark, Visitor Platforms: My Company v Benchmark


