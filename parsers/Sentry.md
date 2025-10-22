# Parsers For Sentry

**Sentry/Overview/Events by Inferred Content Type**
```
_sourceCategory={{Logsdatasource}}  "project_slug" "inferred_content_type"
| json "event.request.inferred_content_type", "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level" as contentType, clientOs, clientVersion, browserName, browserVersion, environment, level nodrop
```

**Sentry/Overview/Events by Project Slug**
```
_sourceCategory={{Logsdatasource}}  "project_slug"
| json "project_slug", "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level" as projectSlug, clientOs, clientVersion, browserName, browserVersion, environment, level nodrop
```

**Sentry/Overview/Events by URL Method**
```
_sourceCategory={{Logsdatasource}}  "project_slug" "request" "method"
| json "event.request.method", "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level" as method, clientOs, clientVersion, browserName, browserVersion, environment, level nodrop
```

**Sentry/Overview/Events Over Time**
```
_sourceCategory={{Logsdatasource}}  "project_slug" 
| json "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level" as clientOs, clientVersion, browserName, browserVersion, environment, level nodrop
```

**Sentry/Overview/Events Project Slug Trend**
```
_sourceCategory={{Logsdatasource}}  "project_slug"
| json "project_slug", "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level" as projectSlug, clientOs, clientVersion, browserName, browserVersion, environment, level nodrop
```

**Sentry/Overview/Geo Locations of Users**
```
_sourceCategory={{Logsdatasource}}  "project_slug" "ip_address"
| json "event.user.ip_address", "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level" as ip, clientOs, clientVersion, browserName, browserVersion, environment, level nodrop
```

**Sentry/Overview/Recent Issue Events**
```
_sourceCategory={{Logsdatasource}}  "project_slug"
| json "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level", "project_name", "project_slug", "message", "url", "event.user.email", "event.user.geo.city", "event.request.url" as clientOs, clientVersion, browserName, browserVersion, environment, level, projectName, projectSlug, message, issueUrl, userEmail, userCity, requestUrl nodrop
```

**Sentry/Overview/Top Apps by Events**
```
_sourceCategory={{Logsdatasource}}  "project_slug" "app"
| json "event.contexts.app.app_identifier", "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level" as app, clientOs, clientVersion, browserName, browserVersion, environment, level nodrop
```

**Sentry/Overview/Top Cities for Triggered Events**
```
_sourceCategory={{Logsdatasource}}  "project_slug" "project_slug" "city"
| json  "event.user.geo.city", "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level" as city, clientOs, clientVersion, browserName, browserVersion, environment, level nodrop
```

**Sentry/Overview/Top Device Family Trend**
```
_sourceCategory={{Logsdatasource}}  "project_slug" "device"
| json "event.contexts.device.model", "event.contexts.device.family", "event.contexts.device.name", "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level" as deviceModel, deviceFamily, deviceName, clientOs, clientVersion, browserName, browserVersion, environment, level nodrop
```

**Sentry/Overview/Top Devices for Events**
```
_sourceCategory={{Logsdatasource}}  "project_slug" "device"
| json "event.contexts.device.model", "event.contexts.device.family", "event.contexts.device.name", "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level" as deviceModel, deviceFamily, deviceName, clientOs, clientVersion, browserName, browserVersion, environment, level nodrop
```

**Sentry/Overview/Top SDK Versions Used**
```
_sourceCategory={{Logsdatasource}}  "project_slug"
| json "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level", "event.sdk.name", "event.sdk.version" as clientOs, clientVersion, browserName, browserVersion, environment, level, SdkName, sdkVersion nodrop
```

**Sentry/Overview/Top Users for Triggered Events**
```
_sourceCategory={{Logsdatasource}}  "project_slug" "email"
| json "event.user.email", "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level" as email, clientOs, clientVersion, browserName, browserVersion, environment, level nodrop
```

**Sentry/Overview/Total Events**
```
_sourceCategory={{Logsdatasource}}  "project_slug" 
| json "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level" as clientOs, clientVersion, browserName, browserVersion, environment, level nodrop
```

**Sentry/Tags/Events by Browser**
```
_sourceCategory={{Logsdatasource}}  "project_slug" "browser"
| json "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level" as clientOs, clientVersion, browserName, browserVersion, environment, level nodrop
```

**Sentry/Tags/Events by Browser Trend**
```
_sourceCategory={{Logsdatasource}}  "project_slug" "browser"
| json "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level" as clientOs, clientVersion, browserName, browserVersion, environment, level nodrop
```

**Sentry/Tags/Events by Client OS**
```
_sourceCategory={{Logsdatasource}}  "project_slug" "client_os"
| json "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level" as clientOs, clientVersion, browserName, browserVersion, environment, level nodrop
```

**Sentry/Tags/Events by Client OS Trend**
```
_sourceCategory={{Logsdatasource}}  "project_slug" "client_os"
| json "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level" as clientOs, clientVersion, browserName, browserVersion, environment, level nodrop
```

**Sentry/Tags/Events by Enviornment**
```
_sourceCategory={{Logsdatasource}}  "project_slug" "environment"
| json "event.environment", "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "level" as environment, clientOs, clientVersion, browserName, browserVersion, level nodrop
```

**Sentry/Tags/Events by Envoirnment Trend**
```
_sourceCategory={{Logsdatasource}}  "project_slug" "environment"
| json "event.environment", "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "level" as environment, clientOs, clientVersion, browserName, browserVersion, level nodrop
```

**Sentry/Tags/Events by Log Level**
```
_sourceCategory={{Logsdatasource}}  "project_slug" "level"
| json "level", "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment" as level, clientOs, clientVersion, browserName, browserVersion, environment nodrop
```

**Sentry/Tags/Events by Log Level Trend**
```
_sourceCategory={{Logsdatasource}}  "project_slug" "level"
| json "level", "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment" as level, clientOs, clientVersion, browserName, browserVersion, environment nodrop
```

**Sentry/Tags/Events by OS**
```
_sourceCategory={{Logsdatasource}}  "project_slug" "os"
| json "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level", "event.contexts.os.name" as clientOs, clientVersion, browserName, browserVersion, environment, level, os nodrop
```

**Sentry/Tags/Events by OS Trend**
```
_sourceCategory={{Logsdatasource}}  "project_slug" "os"
| json "event.contexts.client_os.name", "event.contexts.client_os.version", "event.contexts.browser.name", "event.contexts.browser.version", "event.environment", "level", "event.contexts.os.name" as clientOs, clientVersion, browserName, browserVersion, environment, level, os nodrop
```


