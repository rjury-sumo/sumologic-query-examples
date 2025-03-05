# Parsers For AWS Cost Explorer

## Parser:
```
| json "region", "CostUsd", "CostType", "StartDate", "EndDate", "MetricType", "Granularity", "Estimated"
```
### Use Cases:
Cost by Account - Trend, Cost by Metric Type, Cost by Operation, Cost by Operation - Distribution, Cost by Operation - Trend, Cost by Region, Cost by Service, Cost of Region by Account - Distribution, Cost of Region by Account - Trend, Monthly Cost by Operation, Monthly Cost by Region, Monthly Cost by Service, Top 10 Accounts by Costs, Top 10 Operations by Cost Change in Weekly Costs, Total Cost



## Parser:
```
| json "region", "CostUsd", "CostType", "StartDate", "EndDate", "MetricType", "Granularity", "Estimated", "Service"
| json "LinkedAccount" as linkedAccountNumber
```
### Use Cases:
Cost by Account - Trend, Cost by Metric Type, Cost by Operation, Cost by Operation - Distribution, Cost by Operation - Trend, Cost by Region, Cost by Service, Cost of Region by Account - Distribution, Cost of Region by Account - Trend, Cost of Service by Account - Distribution, Cost of Service by Account - Trend, Monthly Cost by Operation, Monthly Cost by Region, Monthly Cost by Service, Top 10 Accounts by Cost Change in Weekly Costs, Top 10 Accounts by Costs, Top 10 Operations by Cost Change in Weekly Costs, Top 10 Services by Cost Change in Weekly Costs, Total Cost



## Parser:
```
| json "region", "CostUsd", "CostType", "StartDate", "EndDate", "MetricType", "Granularity", "Estimated", "Service", "LinkedAccount"
```
### Use Cases:
Cost by Account - Trend, Cost by Metric Type, Cost by Operation, Total Cost



## Parser:
```
| json "region", "CostUsd", "CostType", "StartDate", "EndDate", "MetricType", "Granularity", "Estimated", "Service", "Operation"
```
### Use Cases:
Cost by Account - Trend, Cost by Metric Type, Cost by Operation, Cost by Operation - Distribution, Cost by Operation - Trend, Cost by Region, Cost by Service, Cost of Region by Account - Distribution, Cost of Region by Account - Trend, Cost of Service by Account - Distribution, Cost of Service by Account - Trend, Monthly Cost by Operation, Monthly Cost by Region, Monthly Cost by Service, Top 10 Accounts by Cost Change in Weekly Costs, Top 10 Accounts by Costs, Top 10 Operations by Cost Change in Weekly Costs, Top 10 Services by Cost Change in Weekly Costs, Total Cost


