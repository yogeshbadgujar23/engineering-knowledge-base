# Jira Analysis Helper - Pre-built Queries & Templates

## 🔍 Pre-built JQL Queries - CORRECTED WITH REAL FIELD DATA

### Volume/Trend Analysis (Executive Level) - MINIMAL FILTERING
```jql
# Basic PEDS Volume (True Customer Defect Count)
project = PEDS AND issuetype = Bug

# Monthly Comparison (Current vs Previous)
project = PEDS AND issuetype = Bug AND created >= -30d
project = PEDS AND issuetype = Bug AND created >= -60d AND created < -30d

# With Basic Exclusions Only
project = PEDS AND issuetype = Bug AND resolution NOT IN ("Not a Bug", "Duplicate", "Data Correction Done")

# Priority Issues (Executive View)
project = PEDS AND issuetype = Bug AND labels IN (T50, T100, onboarding)

# BLOCKER Analysis - CORRECT FIELD MAPPING
project = PEDS AND issuetype = Bug AND customfield_10915 = "Blocker" AND status = CLOSED AND updated >= -30d

# CRITICAL Analysis - CORRECT FIELD MAPPING  
project = PEDS AND issuetype = Bug AND customfield_10915 = "Critical" AND status = CLOSED AND updated >= -30d
```

### QA-Specific Analysis (Operational Level) - FULL FILTERING
```jql
# QA-Actionable PEDS - CORRECT FIELD MAPPING
project = PEDS AND issuetype = Bug AND customfield_10924 IS NOT EMPTY AND resolution NOT IN ("Not a Bug", "Duplicate", "Data Correction Done") AND labels NOT IN (Configuration_issue, incident, data_discrepancy)

# QA Performance Analysis
project = PEDS AND issuetype = Bug AND customfield_10924 IS NOT EMPTY AND status = CLOSED AND updated >= -30d

# QA Backlog Analysis
project = PEDS AND issuetype = Bug AND customfield_10924 IS NOT EMPTY AND status IN (Open, "In Progress")
```

### Severity & Priority Analysis - UPDATED FIELD MAPPINGS
```jql
# Blocker Issues (Same-day SLA)
project = PEDS AND issuetype = Bug AND customfield_10915 = "Blocker"

# Critical Issues (10-day SLA)  
project = PEDS AND issuetype = Bug AND customfield_10915 = "Critical"

# P0 Priority Issues
project = PEDS AND issuetype = Bug AND priority = "P0"

# P1 Priority Issues
project = PEDS AND issuetype = Bug AND priority = "P1"

# High Priority Client Issues
project = PEDS AND issuetype = Bug AND labels IN (T50, T100, onboarding)
```

### Component & Label Analysis - BASED ON REAL DATA
```jql
# Infrastructure/Stability Issues
project = PEDS AND issuetype = Bug AND labels = "Stability-Issues"

# Customer-Reported Issues
project = PEDS AND issuetype = Bug AND labels = "Freshdesk_ticket_linked"

# Release-Related Issues
project = PEDS AND issuetype = Bug AND labels = "Release_issue"

# API/Component Issues
project = PEDS AND issuetype = Bug AND customfield_10889 = "NetcoreAPI"
```

## 📊 Analysis Decision Tree

### STEP 1: Determine Analysis Type
```
User Request Contains:
- "trend", "volume", "monthly", "comparison", "executive" → Use MINIMAL filtering
- "QA performance", "team", "operational", "workload" → Use FULL filtering  
- "comprehensive", "complete", "analysis" → Use MIXED approach
```

### STEP 2: Apply Appropriate Query
```
MINIMAL FILTERING:
- Base: project = PEDS AND issuetype = Bug
- Exclusions: Only "Not a Bug", "Duplicate", "Data Correction Done"
- Purpose: Show true customer defect volume

FULL FILTERING:
- Base: project = PEDS AND issuetype = Bug AND "QA Owner" IS NOT EMPTY
- Exclusions: All (Configuration_issue, incident, data_discrepancy, resolutions)
- Purpose: QA-actionable insights

MIXED APPROACH:
- Run both queries
- Present executive summary with minimal filtering
- Follow with QA-specific insights using full filtering
```

## 🎯 Quick Analysis Commands

### Monthly Trend Analysis
1. **Executive Summary**: Use minimal filtering for true volume
2. **QA Deep Dive**: Use full filtering for operational insights
3. **Present Both**: Comprehensive view with context

### Component Analysis
1. **Volume by Component**: Minimal filtering to show impact
2. **QA Workload by Component**: Full filtering for team planning

### SLA Analysis
1. **Overall SLA Performance**: Use severity-based queries
2. **QA vs Dev SLA**: Compare Dev_SLA_Missed vs SLA_Missed labels

## ⚠️ CRITICAL SUCCESS FACTORS

### For Accurate Analysis:
1. **Match filtering to analysis purpose**
2. **Use severity (not priority) for SLA calculations**
3. **Present both volume and QA perspectives**
4. **Apply Netcore organizational context**
5. **Use professional formatting with metrics**

### Common Mistakes to Avoid:
1. ❌ Over-filtering volume analysis (causes trend inaccuracy)
2. ❌ Under-filtering QA analysis (includes non-actionable items)
3. ❌ Using priority instead of severity for SLA
4. ❌ Ignoring organizational context from reference file

## Analysis Prompt Templates

### For 15-Day QA Analysis
"Analyze PEDS bugs closed by QA in the last 15 days. Use the enhanced template from .cursorrules to provide:
1. Executive summary with key metrics
2. Detailed volume and trend analysis
3. Severity distribution with SLA implications
4. QA team performance breakdown
5. Component impact analysis
6. Automation gap identification
7. Professional formatting with tables and percentages
8. Actionable recommendations
9. BLUF summary

Reference netcore_jira_reference.md for organizational context."

### For Monthly Trend Analysis
"Provide a comprehensive monthly PEDS trend analysis comparing current month vs previous month. Include:
- Volume trends and velocity changes
- Severity pattern shifts
- Team performance evolution
- Component stability trends
- Automation opportunities
- Executive dashboard format"

### For Release Impact Assessment
"Analyze release-related PEDS issues to assess release quality impact:
- Release issue percentage and trends
- Component-wise release impact
- Pre vs post-release metrics
- QA process effectiveness
- Recommendations for release testing improvements"

## Data Processing Tips
- Always calculate percentages for better insights
- Group similar issues for pattern identification
- Compare current vs historical performance
- Identify outliers and investigate causes
- Focus on actionable metrics

## Visualization Enhancements
- Use markdown tables for structured data
- Include trend indicators (↑↓→)
- Highlight critical metrics with emojis
- Create clear section hierarchies
- Use consistent formatting across reports 

## ⚡ OPTIMIZED Query Patterns (Max 2 Queries Per Analysis)

### **Strategy 1: Single Broad Query + Post-Processing**
```jql
# Get ALL data in one call, filter in analysis
project = PEDS AND issuetype = Bug AND created >= -60d
```
**Fields:** `summary,created,updated,status,issuetype,reporter,priority,labels,description,assignee,resolution,customfield_10915,components,customfield_10924`
**Limit:** 50
**Post-process for:**
- Current vs previous month comparison
- Severity breakdown (using customfield_10915)
- Priority analysis
- Component distribution
- QA vs non-QA tickets (using customfield_10924)

### **Strategy 2: Two Complementary Queries**
```jql
# Query 1: Executive View (Volume Analysis)
project = PEDS AND issuetype = Bug AND created >= -60d

# Query 2: QA-Specific Analysis (if needed)
project = PEDS AND issuetype = Bug AND customfield_10924 IS NOT EMPTY AND updated >= -30d
```

### **Strategy 3: Severity-Focused Analysis**
```jql
# Single query for blocker/critical analysis
project = PEDS AND issuetype = Bug AND customfield_10915 IN ("Blocker", "Critical") AND updated >= -30d
```

## 🚫 **AVOID: Multiple Sequential Queries**
```
❌ Don't do this (causes 10+ tool calls):
- Current month query
- Previous month query  
- Severity = Blocker query
- Severity = Critical query
- Priority labels query
- QA Owner query
- Component-specific queries
- Status-specific queries
```

## ✅ **DO: Smart Data Processing**
```
✅ Get broad dataset once, then:
- Filter by date ranges in analysis
- Group by severity in post-processing
- Calculate percentages from raw data
- Identify patterns without additional queries
```

## 📊 Analysis Templates

### **Quick Decision Tree**
```
IF query contains: "trend", "volume", "monthly", "comparison"
   → Use Strategy 1 (Single broad query)
   → Apply minimal filtering
   
IF query contains: "QA performance", "closed by QA"  
   → Use Strategy 2 (QA-focused query)
   → Apply full filtering

IF query contains: "blocker", "critical", severity terms
   → Include "PEDS Severity" field in query
   → Use correct field name: "PEDS Severity" = Blocker
```

### **Required Fields for All Queries**
```
summary,created,updated,status,issuetype,reporter,priority,labels,description,assignee,resolution,customfield_10915,components,customfield_10924
```

### **Field Mapping Reference**
- **PEDS Severity**: `customfield_10915` → Use `"PEDS Severity"`
- **QA Owner**: `customfield_10924` → Use `"QA Owner"`
- **Priority**: Standard field → Use `priority`
- **Components**: Standard field → Use `components`

## 🎯 Analysis Execution Protocol

### **Step 1: Read Reference (1 tool call)**
```
read_file: netcore_jira_reference.md
```

### **Step 2: Execute Optimized Query (1-2 tool calls maximum)**
```
mcp_mcp-atlassian_jira_search: [optimized JQL with all needed fields]
```

### **Step 3: Comprehensive Analysis (No additional queries)**
- Post-process all data from retrieved results
- Apply appropriate filtering in analysis
- Generate professional formatted report

### **Total Tools Per Analysis: 3-4 Maximum**
1. File read (reference)
2. 1-2 Jira queries (optimized)
3. Analysis and reporting (no additional tools) 