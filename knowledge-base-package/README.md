# N8N Knowledge Base Package

## 📦 Package Contents

This package contains all 16 MD files required for the n8n PEDS Analysis Workflow.

### ✅ Essential Files (9 files)
```
templates/
├── peds-analysis-template.md        # PEDS bug analysis template
└── feature-analysis-template.md     # SMT/CEPI feature analysis template

methodology/
├── peds-analysis-methodology.md     # Analysis methodology guide
└── code-analysis-patterns.md        # Code analysis patterns

platform/
├── smartech-architecture-overview.md # Platform architecture
└── netcore_jira_reference.md        # Jira configuration reference

patterns/
├── component-root-cause-mapping.md  # Component troubleshooting
└── common-fixes-database.md         # Common fix patterns

debugging/
└── smartech-qa-debugging-handbook.md # QA debugging procedures
```

### 🔶 Additional Files (7 files)
```
debugging/
├── api-integration-procedures.md    # API debugging
├── database-debugging-procedures.md # Database debugging
└── email-debugging-procedures.md    # Email debugging

platform/
├── api-documentation.md             # API documentation
└── campaign-management.md           # Campaign features

testing/
├── qa-processes.md                  # QA processes
└── component-dependencies.md       # Component relationships
```

## 🚀 Deployment Options

### Option 1: Automated Deployment Script
```bash
# 1. Edit deploy-to-n8n.sh with your server details
nano deploy-to-n8n.sh

# 2. Run the deployment script
chmod +x deploy-to-n8n.sh
./deploy-to-n8n.sh
```

### Option 2: Manual Deployment
```bash
# 1. Create directory structure on n8n server
ssh user@n8n-server "sudo mkdir -p /opt/n8n/knowledge-base/{templates,methodology,platform,patterns,debugging,testing}"

# 2. Copy files category by category
scp templates/*.md user@n8n-server:/opt/n8n/knowledge-base/templates/
scp methodology/*.md user@n8n-server:/opt/n8n/knowledge-base/methodology/
scp platform/*.md user@n8n-server:/opt/n8n/knowledge-base/platform/
scp patterns/*.md user@n8n-server:/opt/n8n/knowledge-base/patterns/
scp debugging/*.md user@n8n-server:/opt/n8n/knowledge-base/debugging/
scp testing/*.md user@n8n-server:/opt/n8n/knowledge-base/testing/

# 3. Set permissions
ssh user@n8n-server "sudo chmod -R 755 /opt/n8n/knowledge-base"
ssh user@n8n-server "sudo find /opt/n8n/knowledge-base -type f -name '*.md' -exec chmod 644 {} \;"
```

### Option 3: Rsync Deployment
```bash
# One-command deployment (after creating directory structure)
rsync -av --progress . user@n8n-server:/opt/n8n/knowledge-base/
```

## 🧪 Validation

After deployment, validate the installation:

```bash
# Check file count
ssh user@n8n-server "find /opt/n8n/knowledge-base -name '*.md' | wc -l"
# Should return: 16

# Check directory structure
ssh user@n8n-server "tree /opt/n8n/knowledge-base"

# Test file access
ssh user@n8n-server "sudo -u n8n head -5 /opt/n8n/knowledge-base/templates/peds-analysis-template.md"
```

## 📊 File Details

| Category | Files | Size (approx) | Critical |
|----------|-------|---------------|----------|
| Templates | 2 | ~15KB | ✅ Essential |
| Methodology | 2 | ~25KB | ✅ Essential |
| Platform | 4 | ~45KB | ✅ Essential |
| Patterns | 2 | ~20KB | ✅ Essential |
| Debugging | 4 | ~60KB | ✅ Essential |
| Testing | 2 | ~15KB | 🔶 Additional |
| **Total** | **16** | **~180KB** | |

## 🎯 Expected n8n Workflow Behavior

Once deployed, the n8n workflow will:

1. **Load Knowledge Base**: Read all 16 files into memory
2. **Smart Analysis**: Use appropriate template based on ticket type
3. **Rich Context**: Apply platform knowledge and debugging procedures
4. **Warning System**: Show limitations when data is incomplete
5. **Quality Output**: Generate comprehensive, actionable analysis

## ⚠️ Important Notes

- **Path**: Files must be deployed to `/opt/n8n/knowledge-base/`
- **Permissions**: Ensure n8n user can read all files (755/644)
- **Essential vs Additional**: Workflow will warn about missing files but continue
- **Updates**: Re-deploy updated files and restart n8n workflow

## 🔗 Related Files

- `PEDS_Optimized_Dual_Trigger_N8N.json` - n8n workflow file
- `docs/setup/n8n_credentials_setup_guide.md` - Credential setup guide
- `docs/setup/slack_analyze_command_setup.md` - Slack integration guide

## 📞 Support

If you encounter issues:
1. Check file permissions: `ls -la /opt/n8n/knowledge-base/`
2. Verify n8n user access: `sudo -u n8n cat /opt/n8n/knowledge-base/templates/peds-analysis-template.md`
3. Check n8n workflow logs for file loading messages
4. Ensure all 16 files are present and readable

Ready for deployment! 🚀

