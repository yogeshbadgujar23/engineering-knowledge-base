# 🔑 Slack MCP Credentials Guide

This guide shows you exactly where to find each credential needed for your Slack MCP setup.

## 📋 Required Credentials
```json
{
    "SLACK_BOT_TOKEN": ""YOUR_SLACK_TOKEN"",
    "SLACK_TEAM_ID": "T1234567890", 
    "SLACK_CHANNEL_IDS": "C1234567890,C0987654321"
}
```

---

## 🤖 **1. SLACK_BOT_TOKEN**

### Where to Find:
1. Go to **https://api.slack.com/apps**
2. Click on your **"Jira Analysis Bot"** app
3. In the left sidebar, click **"OAuth & Permissions"**
4. Look for **"Bot User OAuth Token"**
5. Copy the token that starts with `SLACK_TOKEN_REMOVED`

### Example:
```
SLACK_BOT_TOKEN: ""YOUR_SLACK_TOKEN""
```

### ⚠️ **Important Notes:**
- Token starts with `SLACK_TOKEN_REMOVED` (Bot token)
- **NOT** the User OAuth Token (starts with `xoxp-`)
- Keep this token secure - treat it like a password

---

## 🏢 **2. SLACK_TEAM_ID**

### Method 1: From Slack App Dashboard
1. Go to **https://api.slack.com/apps**
2. Click on your app
3. In the left sidebar, click **"Basic Information"**
4. Look for **"App Credentials"** section
5. Find **"Verification Token"** area - your Team ID is shown there

### Method 2: From Slack Workspace
1. Open your Slack workspace in browser
2. Look at the URL: `https://yourworkspace.slack.com/`
3. Go to **Workspace Settings** → **Settings & Administration** → **Workspace Settings**
4. The Team ID is displayed in the workspace information

### Method 3: Using Slack API (Easiest)
1. Once you have your bot token, you can call:
   ```bash
   curl -H "Authorization: Bearer "YOUR_SLACK_TOKEN"" \
        https://slack.com/api/team.info
   ```
2. Look for `"id"` in the response - that's your Team ID

### Example:
```
SLACK_TEAM_ID: "T1234567890"
```

---

## 📺 **3. SLACK_CHANNEL_IDS**

### Method 1: From Channel URL (Easiest)
1. Open the Slack channel in your browser
2. Look at the URL: `https://yourworkspace.slack.com/archives/C1234567890`
3. The part after `/archives/` is your Channel ID: `C1234567890`

### Method 2: Right-click Method
1. Right-click on the channel name in Slack
2. Select **"Copy link"**
3. The link will contain the channel ID: `https://yourworkspace.slack.com/archives/C1234567890`

### Method 3: Using Slack API
```bash
curl -H "Authorization: Bearer "YOUR_SLACK_TOKEN"" \
     https://slack.com/api/conversations.list
```

### For Multiple Channels:
Separate multiple channel IDs with commas:
```
SLACK_CHANNEL_IDS: "C1234567890,C0987654321,C1111111111"
```

### Example Channels You Might Want:
- `#general` - For general announcements
- `#dev-team` - For development discussions  
- `#qa-team` - For QA-specific analysis
- `#jira-alerts` - Dedicated channel for Jira updates

---

## 🚀 **Quick Setup Commands**

Once you have all credentials, you can set them up quickly:

### Option 1: Environment Variables
```bash
export SLACK_BOT_TOKEN=""YOUR_SLACK_TOKEN""
export SLACK_TEAM_ID="T1234567890"
export SLACK_CHANNEL_IDS="C1234567890,C0987654321"
```

### Option 2: Create .env File
```bash
cat > .env << EOF
SLACK_BOT_TOKEN="YOUR_SLACK_TOKEN"
SLACK_TEAM_ID=T1234567890
SLACK_CHANNEL_IDS=C1234567890,C0987654321
EOF
```

---

## ✅ **Verification Steps**

### Test Your Bot Token:
```bash
curl -H "Authorization: Bearer $SLACK_BOT_TOKEN" \
     https://slack.com/api/auth.test
```

### Test Channel Access:
```bash
curl -H "Authorization: Bearer $SLACK_BOT_TOKEN" \
     "https://slack.com/api/conversations.info?channel=C1234567890"
```

---

## 🔒 **Security Best Practices**

1. **Never commit tokens to Git**
   ```bash
   echo ".env" >> .gitignore
   echo "*.token" >> .gitignore
   ```

2. **Use environment variables in production**

3. **Rotate tokens periodically**

4. **Limit bot permissions to only what's needed**

---

## 🆘 **Troubleshooting**

### Common Issues:

**❌ "Invalid token"**
- Make sure you're using the Bot token (`SLACK_TOKEN_REMOVED`), not User token (`xoxp-`)
- Check token hasn't expired

**❌ "Channel not found"**  
- Verify the bot is added to the channel
- Check channel ID format (starts with `C`)

**❌ "Not in channel"**
- Invite your bot to the channel: `/invite @jira-analysis-bot`

---

## 📞 **Need Help?**

If you're stuck finding any of these credentials:
1. Check your Slack app at https://api.slack.com/apps
2. Verify bot permissions in "OAuth & Permissions"
3. Make sure bot is installed in your workspace
4. Ensure bot is added to the channels you want to use 