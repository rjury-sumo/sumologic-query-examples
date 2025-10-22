# Parsers For Zscaler Web Security

**Zscaler Web Security/Basic Parser with KVAuto of LEEF/Basic Parser with KVAuto of LEEF**
```
_sourceCategory = Labs/Zscaler* "zscaler-nss: LEEF"
| parse "|*|*|*|*|*" as Vendor,Product,Ver,Category,kvout
```

**Zscaler Web Security/Zscaler - Overview - New/Blocked Traffic**
```
_sourceCategory = Labs/Zscaler* !"cat=Allowed" | parse "cat=*\t" as category | count
```

**Zscaler Web Security/Zscaler - Overview - New/Denied Events**
```
_sourceCategory = Labs/Zscaler* !"cat=Allowed"
| parse "src=*\t" as src_ip, "usrName=*\t" as src_user
| parse "|*|*|*|*|" as device_vendor,device_product,update,action
```

**Zscaler Web Security/Zscaler - Overview - New/Denied to Allowed Ratio**
```
_sourceCategory = Labs/Zscaler* 
| parse "cat=*\t" as category
| parse "src=*\t" as src_ip, "usrName=*\t" as src_user
```

**Zscaler Web Security/Zscaler - Overview - New/Denied to Allowed Ratio - Outlier**
```
_sourceCategory = Labs/Zscaler* 
| parse "cat=*\t" as category
| parse "src=*\t" as src_ip, "usrName=*\t" as src_user
```

**Zscaler Web Security/Zscaler - Overview - New/Location of Allowed Activities**
```
_sourceCategory = Labs/Zscaler* "cat=Allowed"
| parse "src=*\t" as src_ip, "usrName=*\t" as src_user
```

**Zscaler Web Security/Zscaler - Overview - New/Location of Denied Activites**
```
_sourceCategory = Labs/Zscaler* !"cat=Allowed"
| parse "src=*\t" as src_ip, "usrName=*\t" as src_user
```


