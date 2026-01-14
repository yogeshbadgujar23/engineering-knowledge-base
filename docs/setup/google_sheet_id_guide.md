# 🔗 How to Get Your Google Sheet ID

## 📊 **Finding Your Google Sheet ID**

### **From the URL:**
Your Google Sheet URL looks like this:
```
https://docs.google.com/spreadsheets/d/1BxiMVs0XRA5nFMdKvBdBZjgmUUqptlbs74OgvE2upms/edit#gid=0
```

**The Sheet ID is the long string between `/d/` and `/edit`:**
```
1BxiMVs0XRA5nFMdKvBdBZjgmUUqptlbs74OgvE2upms
```

### **Step-by-Step:**
1. Open your Google Sheet
2. Copy the URL from the address bar
3. Find the part between `/d/` and `/edit`
4. That's your Sheet ID!

## 🎯 **Example Queries with Your Sheet:**

### **Daily Status Query:**
```
"Extract my team's status for today from Google Sheet ID: YOUR_SHEET_ID_HERE, get Jira details for mentioned tickets, create executive summary"
```

### **Weekly Analysis:**
```
"Analyze my team's performance this week from Google Sheet ID: YOUR_SHEET_ID_HERE with Jira ticket completion rates"
```

### **Blocker Detection:**
```
"Find all blocked/stuck items from Google Sheet ID: YOUR_SHEET_ID_HERE and analyze root causes using Jira data"
```

## 🔒 **Important: Sheet Permissions**

### **Make Sure Your Sheet is Accessible:**

#### **Option 1: Share with Service Account (Recommended)**
1. In your Google Sheet, click **"Share"**
2. Add the service account email (from your OAuth setup)
3. Give **"Viewer"** access (read-only is sufficient)

#### **Option 2: Make Sheet Public (Less Secure)**
1. In your Google Sheet, click **"Share"**
2. Click **"Change to anyone with the link"**
3. Set to **"Viewer"** access

## 📝 **Sample Query Templates:**

### **Replace `YOUR_SHEET_ID` with your actual Sheet ID:**

```bash
# Daily Status
"Extract status for team members [John, Sarah, Mike] from Google Sheet ID: YOUR_SHEET_ID for today's date"

# Timeline Analysis  
"How long has ticket PEDS-12345 been in QA based on Google Sheet ID: YOUR_SHEET_ID history"

# Weekly Summary
"Generate weekly team report from Google Sheet ID: YOUR_SHEET_ID with Jira analytics"
```

## 🚀 **Quick Test:**

Once you have your Sheet ID, try this simple query:
```
"Read the data from Google Sheet ID: YOUR_SHEET_ID and show me the structure"
```

This will help you understand how your data is organized before creating more complex queries. 