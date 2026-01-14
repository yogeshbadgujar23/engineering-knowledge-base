# 🔧 Fix Slack Token Issue

## ❌ **Current Problem:**
You're using a User OAuth Token (`xoxp-`) instead of Bot User OAuth Token (`SLACK_TOKEN_REMOVED`)

## ✅ **Quick Fix Steps:**

### Step 1: Go to Your Slack App
1. Visit **https://api.slack.com/apps**
2. Click on your app (or create one if you haven't)

### Step 2: Get the RIGHT Token
1. In left sidebar, click **"OAuth & Permissions"**
2. Scroll down to **"Tokens for Your Workspace"**
3. Look for **"Bot User OAuth Token"** (NOT "User OAuth Token")
4. Copy the token that starts with `SLACK_TOKEN_REMOVED`

### Step 3: Verify Bot Permissions
Make sure your bot has these scopes in **"OAuth & Permissions" → "Scopes" → "Bot Token Scopes"**:
- `channels:history`
- `channels:read` 
- `chat:write`
- `team:read`
- `users:read`

### Step 4: Install Bot to Workspace
1. In **"OAuth & Permissions"**, click **"Install to Workspace"**
2. Authorize the bot
3. Now you'll get the correct `SLACK_TOKEN_REMOVED` token

### Step 5: Test the Correct Token
```bash
curl -H "Authorization: Bearer "YOUR_SLACK_TOKEN"" \
     https://slack.com/api/team.info
```

You should get a successful response with your team info!

## 🎯 **What You Need:**
- ✅ **Bot User OAuth Token** (starts with `SLACK_TOKEN_REMOVED`)
- ❌ ~~User OAuth Token~~ (starts with `xoxp-`)

## 🚀 **Next Steps After Getting Bot Token:**
1. Use the `SLACK_TOKEN_REMOVED` token for SLACK_BOT_TOKEN
2. Get Team ID from the team.info API call
3. Get Channel IDs from channel URLs
4. Continue with MCP setup 