# Parsers For LambdaTest

**LambdaTest/Test Overview/Queue Usage Trend**
```
_sourceCategory={{Logsdatasource}}  
| {{Timeslice}} as time_delta | where !isNull(test_id) AND !isNull(test_started_at) AND !isNull(test_ended_at) and test_name matches "{{Test_Name}}" and build_name matches "{{Build_Name}}"
// Convert the two fields defining the start and end of each test to milliseconds
| parseDate(test_created_at, "yyyy-MM-dd HH:mm:ss","UTC") as create_milliseconds
| parseDate(test_started_at, "yyyy-MM-dd HH:mm:ss","UTC") as start_milliseconds
// Calculate the previous timeslice before the test began
| floor(create_milliseconds/time_delta)*time_delta as first_timeslice
// Calculate the next timeslice after the test ended
| ceil(start_milliseconds/time_delta)*time_delta as last_timeslice
// Calculate how many timeslices the test spanned
| (last_timeslice - first_timeslice)/time_delta as intervals
// Generate a string comprising "1"'s with a length that is equivalent to the number of intervals
| substring(replace(format("%.0f",pow(10,intervals -1)),"0","1"),0,intervals) as series_of_ones
// Replicate the message once for each interval
| parse regex field=series_of_ones "(?<one_per_time_slice>[0-9])" multi
```


