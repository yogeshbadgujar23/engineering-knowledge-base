# Slack MCP Setup Guide for Jira Analysis

## 🎯 Overview
This guide will help you set up a Slack MCP server that integrates with your optimized Jira analysis workflow. You'll be able to run Jira analyses directly from Slack and get results back in the channel.

## 📋 Prerequisites
- Node.js installed
- Slack workspace admin access
- Your existing Jira MCP credentials
- Claude Desktop or Cursor with MCP support

## 🔧 Step 1: Create Slack App

### 1.1 Create New Slack App
1. Go to https://api.slack.com/apps
2. Click "Create New App" → "From scratch"
3. Name: "Jira Analysis Bot"
4. Select your workspace

### 1.2 Configure Bot Scopes
Navigate to "OAuth & Permissions" and add these Bot Token Scopes:
- `channels:history` - Read channel messages
- `channels:read` - Access channel info
- `chat:write` - Send messages
- `chat:write.public` - Send messages to channels bot isn't in
- `reactions:write` - Add emoji reactions
- `users:read` - Read user info
- `app_mentions:read` - Detect @mentions
- `commands` - Handle slash commands

### 1.3 Install to Workspace
1. Click "Install to Workspace"
2. Authorize the permissions
3. Copy the "Bot User OAuth Token" (starts with `SLACK_TOKEN_REMOVED`)

### 1.4 Get Team ID
- Find in Slack URL: `https://app.slack.com/client/T01234567/...`
- The `T01234567` part is your Team ID

## 🔧 Step 2: Configure MCP Server

### 2.1 Update Claude/Cursor Config
Add this to your MCP configuration:

```json
{
  "mcpServers": {
    "slack": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-slack"
      ],
      "env": {
        "SLACK_BOT_TOKEN": ""YOUR_SLACK_TOKEN"",
        "SLACK_TEAM_ID": "T01234567"
      }
    },
    "jira": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-atlassian"
      ],
      "env": {
        "JIRA_API_TOKEN": "your-jira-token",
        "JIRA_USERNAME": "your-email@company.com",
        "JIRA_INSTANCE_URL": "https://yourcompany.atlassian.net"
      }
    }
  }
}
```

## 🤖 Step 3: Create Analysis Workflow

### 3.1 Slash Commands (Optional)
In Slack App settings, go to "Slash Commands":
- Command: `/jira-analyze`
- Request URL: Your server endpoint (if hosting)
- Description: "Run Jira analysis"

### 3.2 Bot Mention Detection
Your bot will respond to mentions like:
- `@jira-bot analyze PEDS bugs this week`
- `@jira-bot trend analysis last 30 days`
- `@jira-bot QA performance this month`

## 🚀 Step 4: Usage Examples

### Basic Commands
```
@jira-bot analyze PEDS bugs created this week
@jira-bot show PEDS volume trend last 30 days  
@jira-bot QA performance metrics this month
@jira-bot critical issues needing attention
```

### Advanced Queries
```
@jira-bot comprehensive analysis PEDS last 2 weeks with automation gaps
@jira-bot executive summary PEDS defects this quarter
@jira-bot component analysis PEDS showing top issues
```

## 🎨 Response Format

The bot will respond with:
- 📊 **Executive Summary** with key metrics
- 📈 **Trend Analysis** with volume data  
- 🎯 **Critical Issues** requiring attention
- ⚡ **QA Performance** metrics
- 🤖 **Automation Opportunities**
- 💡 **Recommendations**

## 🔒 Security Considerations

1. **Token Security**: Store tokens as environment variables
2. **Channel Permissions**: Bot only works in channels it's invited to
3. **User Validation**: Optionally restrict to specific users/roles
4. **Rate Limiting**: Built-in Slack API rate limit handling

## 🛠 Step 5: Testing

### 5.1 Test Slack Connection
1. Restart Claude Desktop/Cursor
2. Look for Slack in MCP tools list
3. Test with simple message posting

### 5.2 Test Jira Integration
1. Verify Jira MCP is working
2. Run a basic query to confirm field mappings
3. Test with your stored memory context

### 5.3 Test Combined Workflow
1. Invite bot to a test channel
2. Try: `@jira-bot analyze PEDS bugs this week`
3. Verify response formatting and data accuracy

## 🔧 Step 6: Advanced Features

### 6.1 Scheduled Reports
Set up automated daily/weekly reports:
```
@jira-bot schedule daily summary #general 9:00 AM
@jira-bot schedule weekly executive report #leadership Monday 8:00 AM
```

### 6.2 Interactive Buttons
Add Slack buttons for common actions:
- "Drill Down" - More detailed analysis
- "Export to PDF" - Generate report
- "Set Reminder" - Follow-up alerts

### 6.3 Thread Responses
Bot can maintain context in threads for follow-up questions.

## 🎯 Benefits

✅ **Instant Access**: No need to switch to Cursor/Claude Desktop
✅ **Team Collaboration**: Share insights directly in channels
✅ **Consistent Formatting**: Same professional output as optimized workflow
✅ **Efficient Queries**: Leverages your 2-3 query optimization
✅ **Memory Integration**: Uses stored field mappings and context
✅ **Mobile Friendly**: Works from Slack mobile app

## 🚨 Troubleshooting

### Common Issues:
1. **Bot not responding**: Check token and team ID
2. **Permission errors**: Verify OAuth scopes
3. **Jira errors**: Confirm MCP Jira configuration
4. **Rate limits**: Built-in handling, but monitor usage

### Debug Steps:
1. Check MCP server logs
2. Verify bot is in channel
3. Test individual MCP servers separately
4. Confirm environment variables are set

## 📝 Next Steps

1. **Start Simple**: Basic message posting first
2. **Add Jira**: Integrate your analysis workflow
3. **Expand Usage**: Train team on commands
4. **Optimize**: Add shortcuts for common queries
5. **Scale**: Consider hosting for 24/7 availability

This setup will transform your Jira analysis from a manual Cursor task into an instant Slack command available to your entire team! 