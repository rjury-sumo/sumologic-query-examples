# Zscaler Web Security

## Searches

### Log Searches

- **Basic Parser with KVAuto of LEEF**: from Search: Zscaler Web Security/Basic Parser with KVAuto of LEEF 
- **Blocked Traffic**: from Dashboard: Zscaler Web Security/Zscaler - Overview - New 
- **Denied Events**: from Dashboard: Zscaler Web Security/Zscaler - Overview - New 
- **Denied to Allowed Ratio**: from Dashboard: Zscaler Web Security/Zscaler - Overview - New 
- **Denied to Allowed Ratio - Outlier**: from Dashboard: Zscaler Web Security/Zscaler - Overview - New 
- **File Classification Threats**: from Dashboard: Zscaler Web Security/Zscaler - Overview - New 
- **Location of Allowed Activities**: from Dashboard: Zscaler Web Security/Zscaler - Overview - New 
- **Location of Denied Activites**: from Dashboard: Zscaler Web Security/Zscaler - Overview - New

### Metric Searches


## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|Zscaler Web Security|Basic Parser with KVAuto of LEEF|Logs|Zscaler Web Security/Basic Parser with KVAuto of LEEF|\_sourceCategory = Labs/Zscaler\* "zscaler-nss: LEEF"<br />\| parse "\|\*\|\*\|\*\|\*\|\*" as Vendor,Product,Ver,Category,kvout<br />\| kv auto field=kvout|
|Zscaler Web Security|Blocked Traffic|Logs|Zscaler Web Security/Zscaler - Overview - New|\_sourceCategory = Labs/Zscaler\* !"cat=Allowed" \| parse "cat=\*\\t" as category \| count|
|Zscaler Web Security|Denied Events|Logs|Zscaler Web Security/Zscaler - Overview - New|\_sourceCategory = Labs/Zscaler\* !"cat=Allowed"<br />\| parse "src=\*\\t" as src\_ip, "usrName=\*\\t" as src\_user<br />\| parse "\|\*\|\*\|\*\|\*\|" as device\_vendor,device\_product,update,action<br />\| timeslice 5m<br />\|where if ("{{src\_user}}" = "\*", true, src\_user matches "{{src\_user}}") AND if ("{{src\_ip}}" = "\*", true, src\_ip matches "{{src\_ip}}")<br />\|count by \_timeslice,action<br />\| transpose row \_timeslice column action|
|Zscaler Web Security|Denied to Allowed Ratio|Logs|Zscaler Web Security/Zscaler - Overview - New|\_sourceCategory = Labs/Zscaler\* <br />\| parse "cat=\*\\t" as category<br />\| parse "src=\*\\t" as src\_ip, "usrName=\*\\t" as src\_user<br />\| if(category="Allowed",1,0) as allowed \| if(allowed=1,0,1) as denied<br />\| timeslice 5m<br />\|where if ("{{src\_user}}" = "\*", true, src\_user matches "{{src\_user}}") AND if ("{{src\_ip}}" = "\*", true, src\_ip matches "{{src\_ip}}")<br />\|count,sum(allowed) as allowed, sum(denied) as denied by \_timeslice<br />\| (denied/allowed)\*100 as ratio <br />\| fields \_timeslice,ratio|
|Zscaler Web Security|Denied to Allowed Ratio - Outlier|Logs|Zscaler Web Security/Zscaler - Overview - New|\_sourceCategory = Labs/Zscaler\* <br />\| parse "cat=\*\\t" as category<br />\| parse "src=\*\\t" as src\_ip, "usrName=\*\\t" as src\_user<br />\| if(category="Allowed",1,0) as allowed \| if(allowed=1,0,1) as denied<br />\| timeslice 5m<br />\|where if ("{{src\_user}}" = "\*", true, src\_user matches "{{src\_user}}") AND if ("{{src\_ip}}" = "\*", true, src\_ip matches "{{src\_ip}}")<br />\|count,sum(allowed) as allowed, sum(denied) as denied by \_timeslice<br />\| (denied/allowed)\*100 as ratio <br />\| fields \_timeslice,ratio<br />\| outlier ratio|
|Zscaler Web Security|File Classification Threats|Logs|Zscaler Web Security/Zscaler - Overview - New|\_sourceCategory = Labs/Zscaler\* !"filetype= " !"filetype=None" filetype !"threatname=none" !"threatname= "//ensure no nones and nulls<br />\| count<br />|
|Zscaler Web Security|Location of Allowed Activities|Logs|Zscaler Web Security/Zscaler - Overview - New|\_sourceCategory = Labs/Zscaler\* "cat=Allowed"<br />\| parse "src=\*\\t" as src\_ip, "usrName=\*\\t" as src\_user<br />\|where if ("{{src\_user}}" = "\*", true, src\_user matches "{{src\_user}}") AND if ("{{src\_ip}}" = "\*", true, src\_ip matches "{{src\_ip}}")<br />\|count by src\_ip<br />\| lookup latitude, longitude  from geo://location on ip=src\_ip|
|Zscaler Web Security|Location of Denied Activites|Logs|Zscaler Web Security/Zscaler - Overview - New|\_sourceCategory = Labs/Zscaler\* !"cat=Allowed"<br />\| parse "src=\*\\t" as src\_ip, "usrName=\*\\t" as src\_user<br />\|where if ("{{src\_user}}" = "\*", true, src\_user matches "{{src\_user}}") AND if ("{{src\_ip}}" = "\*", true, src\_ip matches "{{src\_ip}}")<br />\|count by src\_ip<br />\| lookup latitude, longitude  from geo://location on ip=src\_ip|

