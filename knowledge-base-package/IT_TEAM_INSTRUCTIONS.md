# IT Team Deployment Instructions

## 📍 **Source Location (Yogesh's System)**
```
Path: /Users/yogeshgujar/Library/Application Support/Claude/knowledge-base-package/
```

## 🎯 **Target Deployment Location (N8N Server)**
```
Path: /opt/n8n/knowledge-base/
```

## 📦 **What to Transfer**
Transfer the entire `knowledge-base-package` folder contents (16 MD files organized in folders) to the n8n server.

## 📂 **Required Directory Structure on N8N Server**
```
/opt/n8n/knowledge-base/
├── templates/           (2 files)
├── methodology/         (2 files)  
├── platform/           (4 files)
├── patterns/           (2 files)
├── debugging/          (4 files)
└── testing/            (2 files)
```

## 🚀 **Deployment Steps**

### Step 1: Create Directory Structure
```bash
sudo mkdir -p /opt/n8n/knowledge-base/{templates,methodology,platform,patterns,debugging,testing}
```

### Step 2: Transfer Files
Copy all files from each subfolder in `knowledge-base-package/` to corresponding folders on server:

```bash
# From Yogesh's system, copy these folders to n8n server:
knowledge-base-package/templates/    → /opt/n8n/knowledge-base/templates/
knowledge-base-package/methodology/  → /opt/n8n/knowledge-base/methodology/
knowledge-base-package/platform/     → /opt/n8n/knowledge-base/platform/
knowledge-base-package/patterns/     → /opt/n8n/knowledge-base/patterns/
knowledge-base-package/debugging/    → /opt/n8n/knowledge-base/debugging/
knowledge-base-package/testing/      → /opt/n8n/knowledge-base/testing/
```

### Step 3: Set Permissions
```bash
sudo chown -R n8n:n8n /opt/n8n/knowledge-base
sudo chmod -R 755 /opt/n8n/knowledge-base
sudo find /opt/n8n/knowledge-base -type f -name "*.md" -exec chmod 644 {} \;
```

## ✅ **Verification**
After deployment, verify:
```bash
# Should return 16
find /opt/n8n/knowledge-base -name "*.md" | wc -l

# Check structure
ls -la /opt/n8n/knowledge-base/

# Test n8n user access
sudo -u n8n head -3 /opt/n8n/knowledge-base/templates/peds-analysis-template.md
```

## 📋 **File List to Verify**
**Essential Files (9):**
- templates/peds-analysis-template.md
- templates/feature-analysis-template.md  
- methodology/peds-analysis-methodology.md
- methodology/code-analysis-patterns.md
- platform/smartech-architecture-overview.md
- platform/netcore_jira_reference.md
- patterns/component-root-cause-mapping.md
- patterns/common-fixes-database.md
- debugging/smartech-qa-debugging-handbook.md

**Additional Files (7):**
- debugging/api-integration-procedures.md
- debugging/database-debugging-procedures.md
- debugging/email-debugging-procedures.md
- platform/api-documentation.md
- platform/campaign-management.md
- testing/qa-processes.md
- testing/component-dependencies.md

## 🔒 **Security Notes**
- Files contain internal documentation and procedures
- Ensure proper file permissions (n8n user must read, but secure from others)
- Files are UTF-8 encoded markdown files

## 📞 **Contact**
If issues arise, contact Yogesh for clarification on file contents or n8n workflow requirements.

**Total Transfer Size**: ~180KB (16 small markdown files)

