# Parsers For AWS SES

## Parser:
```
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```
### Use Cases:
Bounce Type Trend, Permanent Bounce - General, Permanent Bounce - Sub Type Trend, Permanent Bounce - Suppressed, Top Bounced email Addresses, Top Bounced email Domains, Transient Bounce - Content Rejected, Transient Bounce - General, Transient Bounce - MailBox Full, Transient Bounce - Sub Type Trend, Transient Bounce - SubType Breakup, Undetermined Bounce - Sub Type Trend



## Parser:
```
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop 
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```
### Use Cases:
Bounce Type Trend, Permanent Bounce - General, Permanent Bounce - Suppressed, Top Bounced email Domains, Transient Bounce - General, Transient Bounce - MailBox Full, Transient Bounce - Sub Type Trend, Transient Bounce - SubType Breakup, Undetermined Bounce - Sub Type Trend


