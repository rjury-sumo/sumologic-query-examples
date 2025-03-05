# Parsers For Zscaler Web Security

## Parser:
```
| parse "|*|*|*|*|*" as Vendor,Product,Ver,Category,kvout
```
### Use Cases:
Basic Parser with KVAuto of LEEF



## Parser:
```
| parse "cat=*\t" as category
| parse "src=*\t" as src_ip, "usrName=*\t" as src_user
```
### Use Cases:
Basic Parser with KVAuto of LEEF, Denied Events, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier



## Parser:
```
| parse "cat=*\t" as category |```
### Use Cases:
Basic Parser with KVAuto of LEEF, Blocked Traffic, Denied Events, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Location of Allowed Activities, Location of Denied Activites



## Parser:
```
| parse "src=*\t" as src_ip, "usrName=*\t" as src_user
```
### Use Cases:
Basic Parser with KVAuto of LEEF, Denied Events, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Location of Allowed Activities, Location of Denied Activites



## Parser:
```
| parse "src=*\t" as src_ip, "usrName=*\t" as src_user
| parse "|*|*|*|*|" as device_vendor,device_product,update,action
```
### Use Cases:
Basic Parser with KVAuto of LEEF, Denied Events


