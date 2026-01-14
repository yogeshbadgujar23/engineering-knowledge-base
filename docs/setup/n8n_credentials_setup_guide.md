# N8N Credentials Setup Guide

## Overview
This guide provides detailed instructions for setting up all required credentials for the PEDS Analysis Workflow in n8n.

## 🔧 Required Credentials

### 1. **Jira Basic Auth Credential**
**Credential Type:** `HTTP Basic Auth`  
**Credential ID:** `JiraBasicAuth`  
**Credential Name:** `Jira Basic Auth Credential`

#### Configuration:
```yaml
Username: "your_email@example.com"
Password: [Your Jira API Token]
```

#### How to Get Jira API Token:
1. Go to Jira → Profile → Personal Access Tokens
2. Or visit: https://netcoresolutions.atlassian.net/secure/ViewProfile.jspa?selectedTab=com.atlassian.pats.pats-plugin:jira-user-personal-access-tokens
3. Click "Create token"
4. Name: "N8N PEDS Analysis"
5. Expiry: Set appropriate expiration
6. Copy the generated token

### 2. **Jira Cloud API Credential**
**Credential Type:** `Jira Software Cloud API`  
**Credential ID:** `JiraAPI`  
**Credential Name:** `Jira Cloud API Credential`

#### Configuration:
```yaml
Domain: netcoresolutions.atlassian.net
Email: "your_email@example.com"
API Token: [Same as above Jira API Token]
```

### 3. **Claude API Credential**
**Credential Type:** `Anthropic API`  
**Credential ID:** `ClaudeAPI`  
**Credential Name:** `Claude API Credential`

#### Configuration:
```yaml
API Key: [Your Anthropic Claude API Key]
```

#### How to Get Claude API Key:
1. Go to https://console.anthropic.com/
2. Sign in with your account
3. Navigate to "API Keys"
4. Click "Create Key"
5. Name: "N8N PEDS Analysis"
6. Copy the generated key (starts with `sk-ant-`)

### 4. **GitLab API Credential**
**Credential Type:** `GitLab API`  
**Credential ID:** `GitLabAPI`  
**Credential Name:** `GitLab API Credential`

#### Configuration:
```yaml
GitLab Server: https://gitlab.com
Access Token: [Your GitLab Personal Access Token]
```

#### How to Get GitLab Token:
1. Go to GitLab → User Settings → Access Tokens
2. Or visit: https://gitlab.com/-/profile/personal_access_tokens
3. Token name: "N8N PEDS Analysis"
4. Expiration date: Set appropriate date
5. Select scopes:
   - ☑️ `api` (Access the authenticated user's API)
   - ☑️ `read_api` (Read-only API access)
   - ☑️ `read_repository` (Read access to repositories)
6. Click "Create personal access token"
7. Copy the generated token

## 📋 **Credential Setup Checklist**

### ✅ **Step 1: Create Credentials in n8n**
1. Open n8n interface
2. Go to "Credentials" in the left sidebar
3. Click "Add Credential" for each credential type

### ✅ **Step 2: Test Each Credential**
```bash
# Test Jira Basic Auth
curl -u ""your_email@example.com":YOUR_TOKEN" \
  "https://netcoresolutions.atlassian.net/rest/api/3/myself"

# Test Claude API
curl -H "x-api-key: YOUR_CLAUDE_KEY" \
  -H "anthropic-version: 2023-06-01" \
  "https://api.anthropic.com/v1/messages"

# Test GitLab API
curl -H "Authorization: Bearer YOUR_GITLAB_TOKEN" \
  "https://gitlab.com/api/v4/user"
```

### ✅ **Step 3: Update Workflow JSON**
The workflow JSON already includes these credential references:
- `JiraBasicAuth` - for HTTP requests to Jira
- `JiraAPI` - for native Jira nodes
- `ClaudeAPI` - for Claude analysis
- `GitLabAPI` - for GitLab repository checks

### ✅ **Step 4: Import and Configure Workflow**
1. Import `PEDS_Optimized_Dual_Trigger_N8N.json`
2. Verify all nodes show green (credentials found)
3. If any node shows red, manually select the correct credential

## 🔒 **Security Best Practices**

### **Token Security:**
- ✅ Use tokens with minimal required permissions
- ✅ Set appropriate expiration dates
- ✅ Store tokens securely (n8n encrypts credentials)
- ✅ Rotate tokens regularly
- ✅ Monitor token usage

### **Access Control:**
- ✅ Limit Jira token to necessary projects (PEDS, SMT, CEPI)
- ✅ GitLab token should only access required repositories
- ✅ Claude API key should have usage limits set
- ✅ Use service accounts where possible

### **Monitoring:**
- ✅ Monitor API usage quotas
- ✅ Set up alerts for failed authentications
- ✅ Review access logs regularly
- ✅ Track credential usage in n8n

## 🛠 **Troubleshooting**

### **Common Issues:**

#### **"Authentication failed" Error:**
```bash
# Check token validity
curl -u "username:token" "https://netcoresolutions.atlassian.net/rest/api/3/myself"
```
**Solution:** Regenerate token if expired or invalid

#### **"GitLab repository not found" Error:**
```bash
# Check GitLab access
curl -H "Authorization: Bearer TOKEN" "https://gitlab.com/api/v4/projects/PROJECT_ID"
```
**Solution:** Verify repository permissions and token scope

#### **"Claude rate limit exceeded" Error:**
**Solution:** Check usage limits in Anthropic console and upgrade plan if needed

#### **"Credential not found" Error in n8n:**
**Solution:** Manually re-select credentials in affected nodes

### **Debug Steps:**
1. **Test credentials individually** using curl commands
2. **Check n8n logs** for specific error messages
3. **Verify token permissions** in respective platforms
4. **Regenerate tokens** if authentication fails
5. **Update workflow** with new credential IDs if needed

## 📊 **Credential Summary Table**

| Service | Credential Type | ID | Purpose | Required Scopes |
|---------|-----------------|----|---------| ----------------|
| Jira | HTTP Basic Auth | `JiraBasicAuth` | Search/Get tickets | API access |
| Jira | Jira Cloud API | `JiraAPI` | Add comments | API access |
| Claude | Anthropic API | `ClaudeAPI` | Analysis generation | API access |
| GitLab | GitLab API | `GitLabAPI` | Repository checks | read_api, read_repository |

## 🚀 **Ready for Deployment**

Once all credentials are configured:

1. ✅ **Import workflow JSON**
2. ✅ **Verify all nodes are green**
3. ✅ **Test webhook endpoint:** `/webhook/analyze`
4. ✅ **Test cron trigger:** Wait for scheduled run or trigger manually
5. ✅ **Monitor Slack notifications** in `#qa-peds-analysis-updates`

The workflow is now ready for both automated daily PEDS analysis and manual ticket analysis via Slack commands! 🎯
