# 🚀 Memory System Initialization Guide

## Step 1: Initialize OpenMemory with Permanent Knowledge

### **Copy and paste these commands in Cursor chat to store in OpenMemory:**

#### **1. Core Field Mappings**
```
Remember permanently: Netcore PEDS field mappings are critical for accurate queries:
- Severity field: customfield_10915 (values: "Blocker", "Critical", "Major", "Minor") - NEVER use "severity"
- QA Owner field: customfield_10924 - required for QA-specific filtering
- Priority field: standard "priority" (values: "P0", "P1", "P2", "P3")
- Components field: customfield_10889
- Due Date field: customfield_10920
- Labels field: array containing "Freshdesk_ticket_linked", "Stability-Issues", "T50", "T100", "onboarding"
```

#### **2. Organizational Structure**
```
Remember permanently: Netcore has two main streams:
- CPAAS Stream projects: MOB, WAPP, PEPI, RCS, CPEDS
- CE Stream projects: SMT, CEPI, PEDS
- PEDS and CPEDS are customer defect tracking projects
- QA-focused analysis requires filtering by QA Owner field
- Executive analysis focuses on true customer defect volume
```

#### **3. Analysis Strategy Templates**
```
Remember permanently: Netcore analysis filtering strategies:
- Executive/Volume Analysis: Use minimal filtering (project = PEDS AND issuetype = Bug) to show true customer defect volume
- QA/Operational Analysis: Use full filtering with QA Owner and exclusions for actionable insights
- Blocker Analysis: Use customfield_10915 = "Blocker" with appropriate date filtering
- Maximum 2-3 Jira queries per analysis to avoid 25-tool limit
```

#### **4. Query Optimization Rules**
```
Remember permanently: Query optimization for Netcore Jira:
- Use broad queries with comprehensive field selection and post-process data
- Required fields for all queries: summary,created,updated,status,issuetype,reporter,priority,labels,description,assignee,resolution,customfield_10915,components,customfield_10924
- Apply context-appropriate filtering based on analysis type
- Use 60-90 day ranges for trend comparisons in single queries
```

#### **5. Professional Formatting Template**
```
Remember permanently: Netcore analysis should use professional formatting with:
- Executive Summary with Bottom Line Up Front (BLUF)
- Volume Analysis with percentages and trends
- Severity Distribution with clear breakdowns
- Component Analysis with issue counts
- QA Team Performance metrics
- Critical Findings & Recommendations
- Use emojis for visual hierarchy (📊, 🎯, ⚡, etc.)
- Include tables, percentages, and actionable insights
```

## Step 2: Verify OpenMemory Storage

### **Test Memory Retrieval**
```
Ask Cursor: "What field mappings do you remember for PEDS analysis?"
Expected: Should return customfield_10915 for severity, customfield_10924 for QA Owner, etc.
```

## Step 3: Initialize Cursor Session Memory

### **Set Session Preferences**
```
For this session, remember my preferences:
- I prefer comprehensive analysis with both executive and operational perspectives
- Include automation gap analysis in all reports
- Use professional formatting with tables and percentages
- Highlight critical issues requiring immediate attention
- Focus on actionable recommendations
```

## Step 4: Test the Complete System

### **Run a Test Analysis**
```
Generate a PEDS blocker analysis for the last 30 days using the field mappings and templates you remember.
```

**Expected Behavior:**
- Uses customfield_10915 for severity (not "severity")
- Uses appropriate filtering strategy
- Executes 1-2 optimized queries maximum
- Provides professional formatted output
- No tool call loops or field mapping errors

## Step 5: Ongoing Maintenance Commands

### **Add New Insights (as needed)**
```
Remember this insight: [NEW FINDING OR PATTERN]
```

### **Update Session Context**
```
For this session, focus on: [SPECIFIC ANALYSIS AREA]
```

### **Memory Verification**
```
What organizational context and field mappings do you remember for Netcore Jira analysis?
```

---

## 🎯 Success Indicators

✅ **OpenMemory Working:** Field mappings stored and retrieved correctly  
✅ **Cursor Memory Working:** Session preferences maintained  
✅ **Query Optimization:** 1-2 queries instead of 10+  
✅ **Field Accuracy:** Uses customfield_10915 for severity  
✅ **Professional Output:** Formatted reports with insights  
✅ **No Tool Loops:** Efficient execution without repetition  

---

## 🔧 Troubleshooting

### **If OpenMemory isn't storing:**
```bash
# Check OpenMemory service
curl -s http://localhost:3000
# Should show the dashboard

# Check MCP connection in Cursor Settings
# Should show "openmemory" as connected
```

### **If Cursor isn't remembering:**
```
Ask: "What do you remember about our previous conversation?"
If nothing: Cursor's session memory may have reset
```

### **If queries are still inefficient:**
```
Review the query optimization rules in OpenMemory
Verify field mappings are correct
Check that analysis type is specified clearly
```

This initialization ensures both memory systems work together for maximum Jira analysis efficiency! 