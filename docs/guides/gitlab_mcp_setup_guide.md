# GitLab MCP Server Setup Guide

## 🚀 **Overview**
The GitLab MCP Server enables AI agents to interact with GitLab repositories, providing comprehensive access to:
- **Private & Protected Repositories** ✅
- **File Operations** (read, create, update, push)
- **Repository Management** (clone, fork, branch)
- **Issue & Merge Request Management**
- **Project Search & Discovery**

## 🔐 **Step 1: Create GitLab Personal Access Token**

### For GitLab.com:
1. Go to [GitLab.com](https://gitlab.com)
2. Click your avatar → **Preferences**
3. Go to **Access Tokens** in the left sidebar
4. Click **Add new token**

### For Self-Hosted GitLab:
1. Go to your GitLab instance (e.g., `https://gitlab.yourcompany.com`)
2. Click your avatar → **Preferences** 
3. Go to **Access Tokens** in the left sidebar
4. Click **Add new token**

### Required Token Scopes:
```
✅ api                 - Full API access (required)
✅ read_api           - Read-only API access
✅ read_repository    - Read repository content
✅ write_repository   - Write repository content (if creating/updating files)
✅ read_user          - Read user information
```

### Token Security:
- **Expiration**: Set appropriate expiration (30-90 days recommended)
- **Name**: Use descriptive name like "Cursor-MCP-GitLab-Access"
- **Save Token**: Copy and store securely - you won't see it again!

## 🔧 **Step 2: Update MCP Configuration**

Your configuration has been updated in `/Users/yogeshgujar/.cursor/mcp_config.json`:

```json
{
  "mcpServers": {
    "gitlab": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-gitlab"],
      "env": {
        "GITLAB_PERSONAL_ACCESS_TOKEN": "YOUR_GITLAB_TOKEN_HERE",
        "GITLAB_API_URL": "https://gitlab.com/api/v4"
      }
    }
  }
}
```

### **IMPORTANT**: Replace `YOUR_GITLAB_TOKEN_HERE` with your actual token!

### For Self-Hosted GitLab:
Update the `GITLAB_API_URL` to your instance:
```json
"GITLAB_API_URL": "https://gitlab.yourcompany.com/api/v4"
```

## 🛠️ **Step 3: Available GitLab Tools**

Once configured, you'll have access to these powerful tools:

### **📁 File Operations**
- `create_or_update_file` - Create/update files in repositories
- `push_files` - Push multiple files in a single commit
- `get_file_contents` - Read file/directory contents

### **🔍 Repository Management**
- `search_repositories` - Search for GitLab projects
- `create_repository` - Create new GitLab projects
- `fork_repository` - Fork existing projects
- `create_branch` - Create new branches

### **🎯 Issue & MR Management**
- `create_issue` - Create new issues
- `create_merge_request` - Create merge requests

## 🚨 **Step 4: Security Best Practices**

### **Token Security:**
- ✅ Use minimum required scopes
- ✅ Set appropriate expiration dates
- ✅ Store tokens securely (never commit to repos)
- ✅ Rotate tokens regularly
- ✅ Revoke unused tokens

### **Repository Access:**
- ✅ The token will have access to repositories based on your GitLab permissions
- ✅ Private repos are accessible if you have access
- ✅ Protected branches respect GitLab's protection rules

## 🔄 **Step 5: Restart Cursor**

After updating the configuration:
1. **Close Cursor completely**
2. **Restart Cursor**
3. **Verify MCP tools are available**

## 🧪 **Step 6: Test the Setup**

Try these commands to test your GitLab MCP integration:

### Test Repository Search:
```
"Search for my GitLab repositories"
```

### Test File Access:
```
"Show me the contents of README.md from [repository-name]"
```

### Test Repository Creation:
```
"Create a new private repository called 'test-mcp-integration'"
```

## 🐛 **Troubleshooting**

### **Common Issues:**

1. **"Authentication failed"**
   - ✅ Check token is correctly set in config
   - ✅ Verify token has required scopes
   - ✅ Ensure token hasn't expired

2. **"Repository not found"**
   - ✅ Check repository name/path is correct
   - ✅ Verify you have access to the repository
   - ✅ For private repos, ensure token has access

3. **"MCP tools not available"**
   - ✅ Restart Cursor after config changes
   - ✅ Check JSON syntax in config file
   - ✅ Verify npx can install packages

### **Debugging Steps:**
1. Check Cursor's MCP logs
2. Verify token permissions in GitLab
3. Test API access manually: `curl -H "Authorization: Bearer YOUR_TOKEN" https://gitlab.com/api/v4/user`

## 📋 **Example Use Cases**

### **Code Review Automation:**
```
"Review the latest merge request in [project-name] and provide feedback"
```

### **Documentation Updates:**
```
"Update the README.md file in [project-name] to include the new feature documentation"
```

### **Issue Management:**
```
"Create an issue in [project-name] for the bug we just discussed"
```

### **Repository Analysis:**
```
"Analyze the file structure of [project-name] and suggest improvements"
```

## 🎯 **Next Steps**

1. **Replace the placeholder token** with your actual GitLab token
2. **Update API URL** if using self-hosted GitLab
3. **Restart Cursor** to load the new configuration
4. **Test basic operations** to ensure everything works
5. **Explore advanced features** like automated workflows

## 📚 **Additional Resources**

- [GitLab API Documentation](https://docs.gitlab.com/ee/api/)
- [Model Context Protocol](https://modelcontextprotocol.io/)
- [GitLab MCP Server GitHub](https://github.com/modelcontextprotocol/servers/tree/main/src/gitlab)

---

**🔒 Security Note**: Keep your GitLab token secure and never share it publicly. Regularly review and rotate your access tokens for optimal security. 