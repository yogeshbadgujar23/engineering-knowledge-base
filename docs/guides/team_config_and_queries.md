# 👥 Team Configuration & Query Templates

## 🚀 **OPTIMIZED APPROACH - DATE-FIRST FILTERING**

### **⚡ Critical Performance Rule:**
**ALWAYS filter by date FIRST, then by team members to avoid reading entire sheet**

### **📅 Today's Status (Recommended Query):**
```
"Read today's entries from Google Sheet (filter by today's date in column F first), then extract status for my 6 team members: Mayur Manchekar, Shubham Kakade, Paridhi Kothari, Thanush C Reddy, Varsha Salunkhe, Sagar Srinivas"
```

### **📊 Implementation Strategy:**
1. **Step 1:** Filter sheet by date range (Column F - Timestamp)
2. **Step 2:** From filtered results, extract team member data (Column E)
3. **Step 3:** Process status information for each team member
4. **Step 4:** Enhance with Jira data if needed

### **🎯 Date-Filtered Templates:**

#### **Today's Status (Most Efficient):**
```
"Get today's status: First filter Google Sheet by today's date in timestamp column, then show status for Mayur, Shubham, Paridhi, Thanush, Varsha, Sagar"
```

#### **This Week's Summary:**
```
"Filter Google Sheet for this week's entries first, then analyze team performance for my 6 members"
```

#### **Yesterday's Comparison:**
```
"Compare yesterday vs today: Filter sheet by these 2 dates, then show changes for my team members"
```

### **⚠️ What NOT to do:**
- ❌ Read entire sheet then filter
- ❌ Multiple full sheet reads
- ❌ Search without date constraints
- ❌ Process all data before filtering

### **✅ What TO do:**
- ✅ Filter by date first (Column F)
- ✅ Limit to recent entries only
- ✅ Use specific date ranges
- ✅ Process smaller data sets

---

## 📊 **Sheet Structure Understanding**

### **Column Mapping:**
- **Column A:** What we did yesterday
- **Column B:** Plan for today  
- **Column C:** Open Bugs
- **Column D:** Blockers & Dependencies
- **Column E:** Submitted By (team members)
- **Column F:** Timestamp (date/time data)

### **Your Team Members (Filter for these only):**
1. @Mayur Manchekar
2. @Shubham Kakade  
3. @Paridhi Kothari
4. @Thanush C Reddy
5. @Varsha Salunkhe
6. @Sagar Srinivas

### **Jira Ticket Formats:**
- PEDS-XXXX (Primary project)
- SMT-XXXX 
- CEPI-XXXX

---

## 🎯 **Optimized Query Templates**

### **Daily Status Extraction:**
```
"Extract today's status from Google Sheet for my team members: Mayur Manchekar, Shubham Kakade, Paridhi Kothari, Thanush C Reddy, Varsha Salunkhe, Sagar Srinivas. Include Jira ticket details for any mentioned tickets and create executive summary."
```

### **Weekly Team Report:**
```
"Generate weekly team performance report from Google Sheet for team members: Mayur Manchekar, Shubham Kakade, Paridhi Kothari, Thanush C Reddy, Varsha Salunkhe, Sagar Srinivas. Include Jira analytics and completion rates."
```

### **Blocker Analysis:**
```
"Find all blocked/stuck items from past week for team members: Mayur Manchekar, Shubham Kakade, Paridhi Kothari, Thanush C Reddy, Varsha Salunkhe, Sagar Srinivas. Analyze root causes using Jira data."
```

### **Individual Performance:**
```
"Analyze Mayur Manchekar's performance this week from Google Sheet with Jira ticket completion details."
```

### **Timeline Analysis:**
```
"How long has ticket PEDS-XXXX been in progress based on Google Sheet history from my team members?"
```

### **Bug Trend Analysis:**
```
"Analyze open bug trends for my team (Mayur, Shubham, Paridhi, Thanush, Varsha, Sagar) over the past month from Google Sheet data."
```

---

## 📈 **Executive Summary Template**

### **Daily Manager Report Format:**
```markdown
# 📊 Team Status - [Date]

## 🎯 **Executive Summary**
- **Team Size:** 6 members
- **Active Today:** X/6 members  
- **Total Tickets:** X tickets
- **Blockers:** X critical issues
- **Completion Rate:** X% on track

## 👥 **Individual Status**

### ✅ **On Track**
- **Mayur Manchekar** - [Status from Column B]
  - Yesterday: [Column A content]
  - Jira: [Extracted ticket details]
  - Blockers: [Column D content]

### ⚠️ **Blocked/At Risk** 
- **[Team Member]** - [Blocker details]
  - Impact: [Analysis]
  - Action Required: [Recommendations]

## 🐛 **Bug Status**
- **Total Open Bugs:** [Sum from Column C]
- **Critical Issues:** [P0/P1 tickets]
- **Team Distribution:** [Per member breakdown]

## 🚨 **Manager Action Required**
1. [Priority 1 issue]
2. [Priority 2 issue]
```

---

## 🔍 **Advanced Analytics Queries**

### **Team Velocity:**
```
"Calculate team velocity for Mayur, Shubham, Paridhi, Thanush, Varsha, Sagar based on completed tickets from Google Sheet over past 2 weeks."
```

### **Workload Distribution:**
```
"Analyze workload distribution across team members: Mayur Manchekar, Shubham Kakade, Paridhi Kothari, Thanush C Reddy, Varsha Salunkhe, Sagar Srinivas from Google Sheet data."
```

### **Ticket Pattern Analysis:**
```
"Identify recurring issues or patterns in tickets handled by my team from Google Sheet history and Jira data."
```

### **Performance Comparison:**
```
"Compare this week vs last week performance for team members: Mayur, Shubham, Paridhi, Thanush, Varsha, Sagar using Google Sheet and Jira data."
```

---

## 🚀 **Quick Commands**

### **Morning Standup Prep:**
```
"Get today's standup summary for my 6 team members from Google Sheet"
```

### **End of Day Summary:**
```
"Summarize today's accomplishments and tomorrow's plan for my team from Google Sheet"
```

### **Weekly Manager Update:**
```
"Create weekly executive summary for my team with key metrics and action items"
```

### **Escalation Check:**
```
"Identify any tickets or blockers requiring manager escalation from my team's Google Sheet data"
```

---

## 🔧 **Filter Configuration**

### **Team Member Filter (Use in all queries):**
```
WHERE "Submitted By" IN (
  "@Mayur Manchekar",
  "@Shubham Kakade", 
  "@Paridhi Kothari",
  "@Thanush C Reddy",
  "@Varsha Salunkhe",
  "@Sagar Srinivas"
)
```

### **Date Range Examples:**
- Today: `WHERE Timestamp = TODAY()`
- This Week: `WHERE Timestamp >= WEEKSTART()`
- Last 7 Days: `WHERE Timestamp >= TODAY()-7`
- This Month: `WHERE Timestamp >= MONTHSTART()`

---

## 📊 **Sample Executive Metrics**

### **Daily KPIs:**
- Team participation rate (X/6 submitted status)
- Average tickets per person
- Blocker count and severity
- Bug backlog trend

### **Weekly KPIs:**
- Ticket completion rate
- Average time in progress
- Blocker resolution time
- Team velocity trend

### **Monthly KPIs:**
- Overall team performance
- Individual growth metrics
- Process improvement areas
- Quality metrics 