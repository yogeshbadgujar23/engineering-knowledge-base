# N8N Knowledge Base Deployment Structure

## 📂 Server Directory Structure

Create the following structure on your n8n server:

```
/opt/n8n/knowledge-base/
├── templates/
│   └── peds-analysis-template.md
├── methodology/
│   ├── peds-analysis-methodology.md
│   └── code-analysis-patterns.md
├── platform/
│   ├── smartech-architecture-overview.md
│   ├── netcore_jira_reference.md
│   ├── api-documentation.md
│   ├── campaign-management.md
│   ├── channel-integrations.md
│   └── product-overview.md
├── debugging/
│   ├── smartech-qa-debugging-handbook.md
│   ├── api-integration-procedures.md
│   ├── database-debugging-procedures.md
│   ├── email-debugging-procedures.md
│   ├── infrastructure-devops-procedures.md
│   ├── journey-automation-procedures.md
│   ├── monitoring-analytics-procedures.md
│   ├── security-access-procedures.md
│   └── sms-messaging-procedures.md
├── patterns/
│   ├── common-fixes-database.md
│   ├── authentication-issues-patterns.md
│   ├── campaign-issues-patterns.md
│   ├── integration-issues-patterns.md
│   └── component-impact-matrix.md
└── testing/
    ├── qa-processes.md
    ├── component-dependencies.md
    ├── component-matrix.md
    ├── test-automation-reference.md
    └── testing-guidelines.md
```

## 🚀 Deployment Commands

### **Step 1: Create Directory Structure**
```bash
# On your n8n server
sudo mkdir -p /opt/n8n/knowledge-base/{templates,methodology,platform,debugging,patterns,testing}
sudo chown -R n8n:n8n /opt/n8n/knowledge-base  # Adjust user as needed
```

### **Step 2: Copy Files from Repository**
```bash
# From your local repository, sync to n8n server
rsync -av docs/templates/peds-analysis-template.md user@n8n-server:/opt/n8n/knowledge-base/templates/
rsync -av docs/knowledge-base/peds-analysis-methodology.md user@n8n-server:/opt/n8n/knowledge-base/methodology/
rsync -av docs/knowledge-base/code-analysis-patterns.md user@n8n-server:/opt/n8n/knowledge-base/methodology/
rsync -av docs/knowledge-base/smartech-architecture-overview.md user@n8n-server:/opt/n8n/knowledge-base/platform/
rsync -av netcore_jira_reference.md user@n8n-server:/opt/n8n/knowledge-base/platform/
rsync -av docs/knowledge-base/netcore-platform/ user@n8n-server:/opt/n8n/knowledge-base/platform/
rsync -av docs/knowledge-base/debugging-guides/ user@n8n-server:/opt/n8n/knowledge-base/debugging/
rsync -av docs/knowledge-base/defect-patterns/ user@n8n-server:/opt/n8n/knowledge-base/patterns/
rsync -av docs/knowledge-base/testing-guidelines/ user@n8n-server:/opt/n8n/knowledge-base/testing/
```

### **Step 3: Set Permissions**
```bash
# Ensure n8n can read the files
sudo chmod -R 755 /opt/n8n/knowledge-base
sudo find /opt/n8n/knowledge-base -type f -name "*.md" -exec chmod 644 {} \;
```

## 🔧 N8N Configuration Updates

### **Updated Read Repository Files Node**
Replace the `docsPath` in your n8n Code node:
```javascript
const docsPath = '/opt/n8n/knowledge-base';
```

### **Validation Script**
Create this validation script on your n8n server:
```bash
#!/bin/bash
# validate-knowledge-base.sh

KB_PATH="/opt/n8n/knowledge-base"
REQUIRED_FILES=(
  "templates/peds-analysis-template.md"
  "methodology/peds-analysis-methodology.md"
  "methodology/code-analysis-patterns.md"
  "platform/smartech-architecture-overview.md"
  "platform/netcore_jira_reference.md"
)

echo "Validating knowledge base at: $KB_PATH"
echo "========================================"

MISSING_COUNT=0
for file in "${REQUIRED_FILES[@]}"; do
  if [[ -f "$KB_PATH/$file" ]]; then
    echo "✓ $file"
  else
    echo "✗ $file (MISSING)"
    ((MISSING_COUNT++))
  fi
done

echo "========================================"
if [[ $MISSING_COUNT -eq 0 ]]; then
  echo "✅ All critical files present"
  echo "Knowledge base ready for n8n usage"
else
  echo "❌ $MISSING_COUNT critical files missing"
  echo "Please deploy missing files before using n8n workflow"
fi
```

## 📊 Knowledge Base Statistics

### **File Coverage Analysis**
- **Templates**: 1 file (PEDS analysis format)
- **Methodology**: 2 files (analysis approach, code patterns)
- **Platform**: 6 files (architecture, documentation)
- **Debugging**: 9 files (component-specific procedures)
- **Patterns**: 5 files (common issues and fixes)
- **Testing**: 5 files (QA processes and guidelines)

**Total**: 28 knowledge base files for comprehensive PEDS analysis

### **Content Distribution**
- **Technical Knowledge**: 60% (architecture, debugging, patterns)
- **Process Knowledge**: 25% (methodology, QA processes)
- **Reference Material**: 15% (templates, guidelines)

## 🔄 Maintenance & Updates

### **Regular Sync Process**
```bash
#!/bin/bash
# sync-knowledge-base.sh - Run daily/weekly

LOCAL_REPO="/path/to/your/claude/repo"
N8N_SERVER="user@n8n-server"
KB_PATH="/opt/n8n/knowledge-base"

echo "Syncing knowledge base from repository..."
rsync -av --delete $LOCAL_REPO/docs/templates/ $N8N_SERVER:$KB_PATH/templates/
rsync -av --delete $LOCAL_REPO/docs/knowledge-base/ $N8N_SERVER:$KB_PATH/
rsync -av $LOCAL_REPO/netcore_jira_reference.md $N8N_SERVER:$KB_PATH/platform/

echo "Knowledge base sync completed"
```

### **Version Control**
```bash
# Track knowledge base versions
echo "$(date): Knowledge base updated from commit $(git rev-parse HEAD)" >> /opt/n8n/knowledge-base/.update-log
```

## ✅ Testing the Knowledge Base

### **N8N Test Workflow**
1. Create a test ticket analysis
2. Monitor Code node output for file loading
3. Verify Claude receives comprehensive context
4. Validate analysis quality matches Cursor standards

### **Expected Output Quality**
- ✅ Exact PEDS template format
- ✅ Platform-specific technical insights
- ✅ Component-aware debugging guidance  
- ✅ Actionable testing strategies
- ✅ Professional formatting and structure

---

*This deployment structure ensures your n8n workflow has access to the same comprehensive knowledge base used in Cursor for consistent, high-quality PEDS analysis.*
