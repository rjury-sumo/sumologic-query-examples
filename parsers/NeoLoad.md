# Parsers For NeoLoad

## Parser:
```
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
```
### Use Cases:
Completed Test Quality Status Breakdown, Completed Test Status Breakdown, Projects Wise Tests, Quality Status Trend, Scenarios, Targeted Projects, Targeted Tests, Test Run Breakdown, Test Run Frequency, Test Runs, Test Runs - Execution Time, Test Runs by Projects, Test Runs by Scenario, Test Runs by Workspace, Test Runs Frequency, Test Runs Project Trend, Test Runs Scenario Trend, Test Runs Status Trend, Workspaces



## Parser:
```
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name" as testName, project, scenario, status, qualityStatus, workspace nodrop
| parse "\"Duration\":\"*:*:*\"" as hh,mm,ss
```
### Use Cases:
Test Run Frequency, Test Runs by Projects



## Parser:
```
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name", "Max # of VUs" as testName, project, scenario, status, qualityStatus, workspace, maxvus nodrop
```
### Use Cases:
Completed Test Quality Status Breakdown, Completed Test Status Breakdown, Projects Wise Tests, Quality Status Trend, Scenarios, Targeted Projects, Targeted Tests, Test Run Breakdown, Test Run Frequency, Test Runs, Test Runs - Execution Time, Test Runs by Max #VUs, Test Runs by Projects, Test Runs by Scenario, Test Runs by Workspace, Test Runs Frequency, Test Runs Project Trend, Test Runs Scenario Trend, Test Runs Status Trend, Workspaces



## Parser:
```
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name", "Start Date", "Duration" as testName, project, scenario, status, qualityStatus, workspace, startDate, duration nodrop
```
### Use Cases:
Projects Wise Tests, Targeted Projects, Test Run Frequency, Test Runs by Projects, Test Runs by Scenario, Workspaces



## Parser:
```
| json "Test Name", "Project", "Scenario", "Status", "Quality Status", "Workspace Name", "Start Date", "Duration" as testName, project, scenario, status, qualityStatus, workspace, startDate, duration nodrop
| parse "\"Duration\":\"*:*:*\"" as hh,mm,ss
```
### Use Cases:
Completed Test Quality Status Breakdown, Completed Test Status Breakdown, Projects Wise Tests, Scenarios, Targeted Projects, Targeted Tests, Test Run Breakdown, Test Run Frequency, Test Runs, Test Runs - Execution Time, Test Runs by Projects, Test Runs by Scenario, Test Runs by Workspace, Test Runs Frequency, Test Runs Scenario Trend, Test Runs Status Trend, Workspaces


