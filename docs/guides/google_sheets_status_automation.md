# 📊 Google Sheets + Jira Status Automation

## 🎯 **Your Vision:**
- Extract your team's daily status from Google Sheets
- Enhance with Jira ticket details using existing MCP
- Create executive summaries for your manager
- Perform analysis on ticket timelines and blockers

## 🛠 **Complete Solution Architecture**

### **Components Needed:**
1. **Google Sheets MCP** - Read sheet data
2. **Jira MCP** - Already available in Cursor
3. **Status Parser** - Extract team-specific data
4. **Executive Summary Generator** - Format for manager
5. **Analytics Engine** - Track ticket timelines

---

## 📋 **Step 1: Install Google Sheets MCP**

### Install the MCP Server:
```bash
# Install Google Sheets MCP
npm install -g @modelcontextprotocol/server-google-sheets

# Or using npx
npx @modelcontextprotocol/server-google-sheets
```

### Add to Cursor MCP Configuration:
```json
{
  "mcpServers": {
    "google-sheets": {
      "command": "npx",
      "args": ["@modelcontextprotocol/server-google-sheets"],
      "env": {
        "GOOGLE_SHEETS_API_KEY": "your-api-key",
        "GOOGLE_SHEETS_CREDENTIALS": "path/to/credentials.json"
      }
    },
    "jira": {
      // Your existing Jira MCP config
    }
  }
}
```

---

## 🔑 **Step 2: Google Sheets API Setup**

### Method 1: Service Account (Recommended)
1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Create/Select project
3. Enable Google Sheets API
4. Create Service Account
5. Download credentials JSON
6. Share your Google Sheet with the service account email

### Method 2: API Key (Simpler)
1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Enable Google Sheets API
3. Create API Key
4. Restrict to Google Sheets API
5. Make your sheet publicly readable

---

## 📈 **Step 3: Status Extraction Workflow**

### Daily Status Query Example:
```
Extract my team's status for today from the Google Sheet:
- Team members: [John, Sarah, Mike, Lisa]
- Date: 2024-01-30
- Include Jira ticket details for any mentioned tickets
- Format as executive summary
```

### Expected Sheet Format:
```
| Date       | Name  | Status                           | Jira Links    |
|------------|-------|----------------------------------|---------------|
| 2024-01-30 | John  | Working on login bug fix         | PEDS-12345    |
| 2024-01-30 | Sarah | QA testing payment module        | PEDS-12346    |
| 2024-01-30 | Mike  | Blocked on API integration       | SMT-5678      |
```

---

## 🤖 **Step 4: Automated Analysis Queries**

### Query Templates:

#### **Daily Status Summary:**
```
"Extract status for my team (John, Sarah, Mike, Lisa) from today's Google Sheet entries, get Jira details for mentioned tickets, and create executive summary"
```

#### **Timeline Analysis:**
```
"Analyze how long ticket PEDS-12345 has been in QA status based on historical sheet data and Jira history"
```

#### **Blocker Analysis:**
```
"Find all 'blocked' or 'stuck' statuses from the past week for my team and identify root causes from Jira tickets"
```

#### **Weekly Summary:**
```
"Generate weekly team performance summary from sheet data with Jira ticket completion rates"
```

---

## 📊 **Step 5: Executive Summary Template**

### Output Format:
```markdown
# 📊 Team Status - January 30, 2024

## 🎯 **Executive Summary**
- **Team Size:** 4 members
- **Active Tickets:** 8 tickets
- **Blockers:** 2 critical issues
- **Completion Rate:** 75% on track

## 👥 **Individual Status**

### ✅ **On Track (2 members)**
- **John** - Login bug fix (PEDS-12345)
  - Status: In Progress → Testing
  - ETA: Tomorrow
  - Jira: P1 Critical, 85% complete

- **Sarah** - Payment module QA (PEDS-12346)
  - Status: QA Testing
  - ETA: End of week
  - Jira: P2 Major, no blockers

### ⚠️ **Blocked/At Risk (2 members)**
- **Mike** - API integration (SMT-5678)
  - Status: Blocked on external API
  - Impact: High - affects 3 other tickets
  - Jira: P0 Blocker, waiting for vendor

## 📈 **Key Metrics**
- **Tickets Completed This Week:** 5
- **Average Time in QA:** 2.3 days
- **Escalation Needed:** 1 ticket (SMT-5678)

## 🚨 **Manager Action Required**
1. **SMT-5678** - Vendor escalation needed
2. **Resource allocation** - Consider backup for Mike's work
```

---

## 🔧 **Step 6: Implementation Script**

### Create Automation Script:
```bash
#!/bin/bash
# daily_status_automation.sh

echo "🚀 Extracting daily team status..."

# Set date (or pass as parameter)
DATE=${1:-$(date +%Y-%m-%d)}

# Run the status extraction
echo "📊 Processing status for $DATE..."

# This will be your Cursor query
echo "Query: Extract my team status for $DATE from Google Sheet, enhance with Jira details, create executive summary"
```

---

## 📋 **Step 7: Advanced Analytics Queries**

### Ticket Timeline Analysis:
```sql
-- Conceptual query for timeline analysis
SELECT 
  ticket_id,
  status,
  days_in_status,
  blocker_duration
FROM sheet_history 
WHERE team_member IN ('John', 'Sarah', 'Mike', 'Lisa')
  AND date >= '2024-01-01'
```

### Trend Analysis:
```
"Analyze productivity trends for my team over the past month using Google Sheet data and Jira completion rates"
```

---

## 🎯 **Usage Examples**

### **Daily Standup Prep:**
```
"Get today's team status from Google Sheet with Jira details for standup meeting"
```

### **Weekly Manager Report:**
```
"Generate weekly team performance report from Google Sheet data with Jira analytics"
```

### **Blocker Analysis:**
```
"Find all blocked items from past week and analyze root causes using Jira data"
```

### **Performance Metrics:**
```
"Calculate team velocity and ticket completion rates from combined Sheet + Jira data"
```

---

## 🚀 **Implementation Steps**

### **Phase 1: Basic Setup**
1. ✅ Install Google Sheets MCP
2. ✅ Configure API credentials
3. ✅ Test sheet access
4. ✅ Test Jira integration

### **Phase 2: Status Extraction**
1. ✅ Create team member filter
2. ✅ Parse daily entries
3. ✅ Extract Jira ticket references
4. ✅ Generate basic summary

### **Phase 3: Advanced Analytics**
1. ✅ Timeline analysis
2. ✅ Blocker detection
3. ✅ Trend analysis
4. ✅ Performance metrics

### **Phase 4: Automation**
1. ✅ Daily automated queries
2. ✅ Weekly reports
3. ✅ Alert system for blockers
4. ✅ Executive dashboards

---

## 🔒 **Security & Best Practices**

1. **Use Service Account** for Google Sheets access
2. **Restrict API permissions** to minimum required
3. **Store credentials securely** (not in code)
4. **Audit access regularly**
5. **Use read-only access** where possible

---

## 📞 **Next Steps**

1. **Share your Google Sheet format** - I'll create specific parsers
2. **List your team members** - I'll create filters
3. **Define your manager's preferred summary format**
4. **Set up Google Sheets API credentials**
5. **Test with sample data**

Would you like me to help you get started with any specific step? 