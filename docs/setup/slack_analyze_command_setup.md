# Slack /analyze Command Setup Guide

## Overview
This guide sets up a Slack slash command `/analyze` that triggers individual ticket analysis via the n8n workflow.

## ✅ Prerequisites
- n8n workflow deployed and running
- Slack workspace admin access
- Webhook endpoint available

## 🔧 Slack App Configuration

### Step 1: Create Slack App
1. Go to https://api.slack.com/apps
2. Click "Create New App" → "From scratch"
3. App Name: "PEDS Analysis Bot"
4. Choose your workspace

### Step 2: Configure Slash Command
1. In your Slack app → "Slash Commands"
2. Click "Create New Command"
3. Configure:
   ```
   Command: /analyze
   Request URL: https://your-n8n-instance.com/webhook/analyze
   Short Description: Analyze PEDS/SMT/CEPI tickets
   Usage Hint: PEDS-12345 or SMT-67890 or CEPI-11111
   ```

### Step 3: Install App to Workspace
1. Go to "Install App" in sidebar
2. Click "Install to Workspace"
3. Authorize the app

## 📝 Usage Examples

### Command Format
```bash
/analyze PEDS-12345    # Analyze PEDS bug ticket
/analyze SMT-67890     # Analyze SMT feature ticket  
/analyze CEPI-11111    # Analyze CEPI enhancement ticket
```

### Expected Responses

#### ✅ Success Response (PEDS Bug)
```
✅ **Ticket Analysis SUCCESS** - 1/21/2025 2:30:15 PM
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🤖 **Individual Analysis Completed**
  🎯 Ticket: PEDS-12345
  ✅ Analysis Status: **SUCCESS**
  📝 Analysis added to JIRA ticket
🔗 **View Ticket**: https://netcoresolutions.atlassian.net/browse/PEDS-12345
```

#### ✅ Success Response (SMT Feature)
```
✅ **Feature Analysis SUCCESS** - 1/21/2025 2:30:15 PM
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🤖 **Individual Analysis Completed**
  🎯 Ticket: SMT-67890
  ✅ Analysis Status: **SUCCESS**
  📝 Feature analysis added to JIRA ticket
🔗 **View Ticket**: https://netcoresolutions.atlassian.net/browse/SMT-67890
```

#### ❌ Error Response
```
❌ **Ticket Analysis FAILED** - 1/21/2025 2:30:15 PM
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🤖 **Individual Analysis Failed**
  🎯 Ticket: PEDS-99999
  ❌ Analysis Status: **FAILED**
  ⚠️ Please check ticket manually
🔗 **View Ticket**: https://netcoresolutions.atlassian.net/browse/PEDS-99999
```

## 🔄 Automated Daily Response

### Daily Cron Success (Multiple Tickets)
```
✅ **QA PEDS Analysis Automation SUCCESS** - 1/21/2025 10:00:00 AM
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🤖 **Automated Run Completed**
  📋 Dev Done Tickets Processed: 3
  ✅ Successfully Analyzed: 2
  ⏩ Skipped (Already analyzed): 1
  ❌ Failed: 0
🎯 **Successfully Analyzed Tickets:**
✅ PEDS-12345: Analysis added
✅ PEDS-12346: Analysis added
📊 **Next Run**: Tomorrow at 10:00 AM
🔗 **Manual Analysis**: Use /analyze <TICKET-ID> command
```

### Daily Cron No Tickets
```
✅ **QA PEDS Analysis Automation SUCCESS** - 1/21/2025 10:00:00 AM
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🤖 **Automated Run Completed**
  📪 No new tickets to process
📊 **Next Run**: Tomorrow at 10:00 AM
🔗 **Manual Analysis**: Use /analyze <TICKET-ID> command
```

## 🎯 Dynamic Analysis Features

### Ticket Type Detection
- **PEDS tickets**: Uses PEDS bug analysis template
- **SMT/CEPI tickets**: Uses feature enhancement template
- **Auto-detection**: Based on project key and issue type

### Warning System
- **No Code Diff**: Shows warning when GitLab links missing
- **Insufficient Description**: Flags poor ticket descriptions
- **Analysis Limitations**: Transparent about data completeness

### GitLab Integration
- **URL Detection**: Scans for GitLab merge request links
- **Repository Validation**: Checks GitLab API accessibility
- **Diff Status**: Updates analysis based on code availability

## 🛠 Troubleshooting

### Common Issues

#### Command Not Working
```bash
# Check webhook endpoint
curl -X POST https://your-n8n-instance.com/webhook/analyze \
  -H "Content-Type: application/json" \
  -d '{"text": "PEDS-12345"}'
```

#### Invalid Ticket Format
- **Error**: "No valid ticket ID found in Slack message"
- **Solution**: Use format `/analyze PEDS-12345` (not `/analyze analyze PEDS-12345`)

#### Permission Denied
- **Error**: "Ticket not found or you don't have access"
- **Solution**: Check JIRA permissions and ticket existence

### Debug Information
- Check n8n workflow execution logs
- Verify Slack app permissions
- Test webhook endpoint directly
- Validate JIRA/GitLab credentials

## 📊 Key Features

### ✅ What This Setup Provides:
- **Dual Trigger System**: Both automated (cron) and manual (Slack)
- **Smart Template Selection**: PEDS vs Feature analysis
- **Rich Slack Formatting**: Professional, readable responses
- **Direct JIRA Links**: Quick access to analyzed tickets
- **Error Handling**: Clear failure messages with guidance
- **GitLab Integration**: Code diff validation and warnings
- **RAG Analysis**: Comprehensive knowledge base integration

### 🎯 Command Comparison:
| Old Command | New Command | Ticket Types |
|------------|-------------|--------------|
| `/peds-analyze PEDS-12345` | `/analyze PEDS-12345` | PEDS only |
| N/A | `/analyze SMT-67890` | SMT features |
| N/A | `/analyze CEPI-11111` | CEPI enhancements |

The new `/analyze` command is more versatile and handles all ticket types intelligently! 🚀
