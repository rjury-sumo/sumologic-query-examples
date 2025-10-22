# Parsers For AWS SES

**AWS SES/Amazon SES - Bounced Notifications - New/Bounce Type Trend**
```
_sourceCategory = Labs/AWS/SES "\"notificationType\":\"Bounce\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**AWS SES/Amazon SES - Bounced Notifications - New/Permanent Bounce - General**
```
_sourceCategory = Labs/AWS/SES "\"notificationType\":\"Bounce\"" "\"bounceType\":\"Permanent\"" "\"bounceSubType\":\"General\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop 
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**AWS SES/Amazon SES - Bounced Notifications - New/Permanent Bounce - Sub Type Trend**
```
_sourceCategory = Labs/AWS/SES "\"notificationType\":\"Bounce\"" "\"bounceType\":\"Permanent\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**AWS SES/Amazon SES - Bounced Notifications - New/Permanent Bounce - Suppressed**
```
_sourceCategory = Labs/AWS/SES "\"notificationType\":\"Bounce\"" "\"bounceType\":\"Permanent\"" "\"bounceSubType\":\"Suppressed\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop 
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**AWS SES/Amazon SES - Bounced Notifications - New/Top Bounced email Addresses**
```
_sourceCategory = Labs/AWS/SES "\"notificationType\":\"Bounce\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**AWS SES/Amazon SES - Bounced Notifications - New/Top Bounced email Domains**
```
_sourceCategory = Labs/AWS/SES "\"notificationType\":\"Bounce\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**AWS SES/Amazon SES - Bounced Notifications - New/Transient Bounce - Content Rejected**
```
_sourceCategory = Labs/AWS/SES "\"notificationType\":\"Bounce\"" "\"bounceType\":\"Transient\"" "\"bounceSubType\":\"ContentRejected\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**AWS SES/Amazon SES - Bounced Notifications - New/Transient Bounce - General**
```
_sourceCategory = Labs/AWS/SES "\"notificationType\":\"Bounce\"" "\"bounceType\":\"Transient\"" "\"bounceSubType\":\"General\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**AWS SES/Amazon SES - Bounced Notifications - New/Transient Bounce - MailBox Full**
```
_sourceCategory = Labs/AWS/SES "\"notificationType\":\"Bounce\"" "\"bounceType\":\"Transient\"" "\"bounceSubType\":\"MailboxFull\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**AWS SES/Amazon SES - Bounced Notifications - New/Transient Bounce - Sub Type Trend**
```
_sourceCategory = Labs/AWS/SES "\"notificationType\":\"Bounce\"" "\"bounceType\":\"Transient\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**AWS SES/Amazon SES - Bounced Notifications - New/Transient Bounce - SubType Breakup**
```
_sourceCategory = Labs/AWS/SES "\"notificationType\":\"Bounce\"" "\"bounceType\":\"Transient\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**AWS SES/Amazon SES - Bounced Notifications - New/Undetermined Bounce - Sub Type Trend**
```
_sourceCategory = Labs/AWS/SES "\"notificationType\":\"Bounce\"" "\"bounceType\":\"Undetermined\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```


