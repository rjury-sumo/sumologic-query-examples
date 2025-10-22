# Parsers For NeoLoad

**NeoLoad/Neoload - Overview/Completed Test Quality Status Breakdown**
```
_sourceCategory={{Logsdatasource}}  !"$(test_result_quality_status)"
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
```

**NeoLoad/Neoload - Overview/Completed Test Status Breakdown**
```
_sourceCategory={{Logsdatasource}}  !"$(test_result_status)"
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
```

**NeoLoad/Neoload - Overview/Projects Wise Tests**
```
_sourceCategory={{Logsdatasource}} 
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name", "Start Date", "Duration" as testName, project, scenario, status, qualityStatus, workspace, startDate, duration nodrop
```

**NeoLoad/Neoload - Overview/Scenarios**
```
_sourceCategory={{Logsdatasource}} 
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
```

**NeoLoad/Neoload - Overview/Targeted Projects**
```
_sourceCategory={{Logsdatasource}} 
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
```

**NeoLoad/Neoload - Overview/Targeted Tests**
```
_sourceCategory={{Logsdatasource}} 
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
```

**NeoLoad/Neoload - Overview/Test Run Breakdown**
```
_sourceCategory={{Logsdatasource}} 
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
```

**NeoLoad/Neoload - Overview/Test Run Frequency**
```
_sourceCategory={{Logsdatasource}} 
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
| where testName matches "{{testName}}" and project matches "{{project}}" and scenario matches "{{scenario}}" and status matches "{{status}}" and qualityStatus matches "{{qualityStatus}}" and workspace matches "{{workspace}}"
| parse "\"Duration\":\"*:*:*\"" as hh,mm,ss
```

**NeoLoad/Neoload - Overview/Test Runs**
```
_sourceCategory={{Logsdatasource}} 
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
```

**NeoLoad/Neoload - Overview/Test Runs by Projects**
```
_sourceCategory={{Logsdatasource}} 
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
```

**NeoLoad/Neoload - Overview/Test Runs by Scenario**
```
_sourceCategory={{Logsdatasource}} 
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
```

**NeoLoad/Neoload - Overview/Workspaces**
```
_sourceCategory={{Logsdatasource}} 
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
```

**NeoLoad/Neoload - Test Run Details/Quality Status Trend**
```
_sourceCategory={{Logsdatasource}}  !"$(test_result_quality_status)"
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
```

**NeoLoad/Neoload - Test Run Details/Test Runs - Execution Time**
```
_sourceCategory={{Logsdatasource}} 
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name", "Start Date", "Duration" as testName, project, scenario, status, qualityStatus, workspace, startDate, duration nodrop
| where testName matches "{{testName}}" and project matches "{{project}}" and scenario matches "{{scenario}}" and status matches "{{status}}" and qualityStatus matches "{{qualityStatus}}" and workspace matches "{{workspace}}"
| parse "\"Duration\":\"*:*:*\"" as hh,mm,ss
```

**NeoLoad/Neoload - Test Run Details/Test Runs by Max #VUs**
```
_sourceCategory={{Logsdatasource}} 
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name", "Max # of VUs" as testName, project, scenario, status, qualityStatus, workspace, maxvus nodrop
```

**NeoLoad/Neoload - Test Run Details/Test Runs by Projects**
```
_sourceCategory={{Logsdatasource}} 
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
```

**NeoLoad/Neoload - Test Run Details/Test Runs by Workspace**
```
_sourceCategory={{Logsdatasource}} 
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
```

**NeoLoad/Neoload - Test Run Details/Test Runs Frequency**
```
_sourceCategory={{Logsdatasource}} 
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
```

**NeoLoad/Neoload - Test Run Details/Test Runs Project Trend**
```
_sourceCategory={{Logsdatasource}} 
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
```

**NeoLoad/Neoload - Test Run Details/Test Runs Scenario Trend**
```
_sourceCategory={{Logsdatasource}} 
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
```

**NeoLoad/Neoload - Test Run Details/Test Runs Status Trend**
```
_sourceCategory={{Logsdatasource}} 
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
```


