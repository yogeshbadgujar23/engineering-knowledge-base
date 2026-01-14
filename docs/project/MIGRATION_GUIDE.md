# 🔄 Migration Guide - Project Reorganization

## 📋 **Migration Overview**

This guide helps you transition from the old scattered project structure to the new organized architecture. The migration eliminates duplicates, consolidates functionality, and improves maintainability.

---

## 🎯 **Key Changes**

### **✅ What's Been Improved:**
1. **Unified Analyzer**: 9+ analyzer classes → 1 unified analyzer with modes
2. **Consolidated Configuration**: Multiple configs → Unified configuration system
3. **Organized Documentation**: Scattered docs → Structured knowledge base
4. **Clean Dependencies**: Multiple requirements → Single comprehensive requirements.txt
5. **Proper Git Ignore**: Browser cache files properly excluded
6. **Structured Logging**: Consistent logging across all modules

### **🔧 What's Been Consolidated:**

| **Old Files** | **New Location** | **Status** |
|---------------|-----------------|------------|
| `ticket_analyzer.py` (multiple) | `src/analyzers/unified_analyzer.py` | ✅ Consolidated |
| `analysis_server.py` (multiple) | `src/servers/analysis_server.py` | 🔄 In Progress |
| `morning_qa_automation*.py` | `src/automation/morning_automation.py` | 🔄 In Progress |
| `mcp_*_analyzer.py` | `src/integrations/mcp_integration.py` | 🔄 In Progress |
| `config.json`, `analysis_config.json` | `config/unified_config.json` | ✅ Consolidated |
| Documentation scattered | `docs/knowledge-base/` | ✅ Organized |
| Requirements files | `requirements.txt` | ✅ Unified |

---

## 🚀 **Migration Steps**

### **Step 1: Environment Setup**
```bash
# Create environment file from template
cp .env.template .env

# Edit .env with your credentials
nano .env

# Install unified dependencies
pip install -r requirements.txt
```

### **Step 2: Configuration Migration**
```bash
# Backup old configurations
mkdir backup/
cp config.json analysis_config.json backup/

# Use new unified configuration
# Configuration is now in config/unified_config.json
# Environment-specific overrides in config/development.json, config/production.json
```

### **Step 3: Update Your Scripts**

#### **Old Way (Multiple Analyzers):**
```python
from ticket_analyzer import TicketAnalyzer
from mcp_production_analyzer import MCPProductionAnalyzer
from cursor_peds_analyzer import CursorPEDSAnalyzer

# Multiple instances, different interfaces
ticket_analyzer = TicketAnalyzer()
mcp_analyzer = MCPProductionAnalyzer()
cursor_analyzer = CursorPEDSAnalyzer()
```

#### **New Way (Unified Analyzer):**
```python
from src.analyzers.unified_analyzer import create_analyzer

# Single unified interface with multiple modes
analyzer = create_analyzer(config_path="config/unified_config.json")

# Different analysis modes
result = await analyzer.analyze_ticket("PEDS-12345", mode="dev_done")
result = await analyzer.analyze_ticket("PEDS-12345", mode="bug_investigation")
result = await analyzer.analyze_ticket("PEDS-12345", mode="comprehensive")
```

### **Step 4: Update Import Paths**

| **Old Import** | **New Import** |
|----------------|----------------|
| `from ticket_analyzer import TicketAnalyzer` | `from src.analyzers.unified_analyzer import UnifiedAnalyzer` |
| `from mcp_health_checker import MCPHealthChecker` | `from src.servers.health_monitor import HealthMonitor` |
| `from slack_alerting import SlackAlerter` | `from src.integrations.slack_client import SlackClient` |

### **Step 5: Update Configuration Loading**

#### **Old Way:**
```python
# Multiple config files, manual loading
with open('config.json', 'r') as f:
    config = json.load(f)
with open('analysis_config.json', 'r') as f:
    analysis_config = json.load(f)
```

#### **New Way:**
```python
from src.utils.config_manager import ConfigManager

# Unified configuration with validation
config = ConfigManager("config/unified_config.json")
jira_settings = config.get("analysis.jira")
server_port = config.get("server.port", 5000)
```

---

## 📁 **File Mapping Guide**

### **Analyzer Files:**
```
Old Structure:
├── ticket_analyzer.py (37KB)
├── QA-Automation/ticket_analyzer.py (25KB)
├── mcp_analyzer.py (18KB)
├── mcp_production_analyzer.py (78KB)
├── production_mcp_analyzer.py (36KB)
├── cursor_peds_analyzer.py (14KB)
└── real_cursor_analyzer.py (5KB)

New Structure:
├── src/analyzers/
│   ├── unified_analyzer.py          # Main analyzer (consolidated)
│   ├── knowledge_engine.py          # Knowledge base integration
│   ├── pattern_matcher.py           # Issue pattern recognition
│   └── modes/                       # Specialized analysis modes
│       ├── dev_done_analysis.py
│       ├── bug_analysis.py
│       ├── performance_analysis.py
│       └── integration_analysis.py
```

### **Server Files:**
```
Old Structure:
├── analysis_server.py (9.9KB)
├── QA-Automation/analysis_server.py (15KB)
├── enhanced_server.py (16KB)
└── simple_headless_server.py (12KB)

New Structure:
├── src/servers/
│   ├── analysis_server.py           # Main server (consolidated)
│   ├── health_monitor.py            # Health checking
│   └── api_endpoints.py             # REST API definitions
```

### **Configuration Files:**
```
Old Structure:
├── config.json
├── analysis_config.json
├── cursor_mcp_config_final.json
└── cursor_mcp_config_with_sheet.json

New Structure:
├── config/
│   ├── unified_config.json          # Main configuration
│   ├── mcp_config.json              # MCP server configurations
│   ├── development.json             # Development overrides
│   ├── production.json              # Production overrides
│   └── templates/                   # Configuration templates
```

---

## 🔧 **API Changes**

### **Analysis API:**

#### **Old API:**
```python
# Different interfaces for different analyzers
ticket_analyzer.analyze_ticket(ticket_id)
mcp_analyzer.analyze_issue_content(data)
cursor_analyzer.analyze_peds_ticket(ticket_id, options)
```

#### **New Unified API:**
```python
# Single consistent interface
await analyzer.analyze_ticket(
    ticket_id="PEDS-12345",
    mode="dev_done",  # or "bug_investigation", "performance", "integration", "comprehensive"
    options={"include_git_analysis": True, "depth": "detailed"}
)
```

### **Configuration API:**

#### **Old API:**
```python
# Manual configuration handling
config = load_config('config.json')
jira_url = config['jira']['url']
```

#### **New API:**
```python
# Unified configuration manager
config = ConfigManager()
jira_url = config.get('analysis.jira.base_url')
config.validate()  # Built-in validation
```

---

## 🧪 **Testing Your Migration**

### **1. Configuration Test:**
```bash
python -c "
from src.utils.config_manager import ConfigManager
config = ConfigManager()
validation = config.validate()
print(f'Config valid: {validation[\"valid\"]}')
if not validation['valid']:
    print('Errors:', validation['errors'])
"
```

### **2. Analyzer Test:**
```bash
python -c "
import asyncio
from src.analyzers.unified_analyzer import AsyncUnifiedAnalyzer

async def test():
    async with AsyncUnifiedAnalyzer() as analyzer:
        health = analyzer.get_health_status()
        print(f'Health status: {health}')
        
asyncio.run(test())
"
```

### **3. Knowledge Base Test:**
```bash
# Check knowledge base files are accessible
ls -la docs/knowledge-base/netcore-platform/
ls -la docs/knowledge-base/testing-guidelines/
ls -la docs/knowledge-base/defect-patterns/
```

---

## 🚨 **Troubleshooting**

### **Common Issues:**

#### **1. Import Errors:**
```python
# Error: ModuleNotFoundError: No module named 'ticket_analyzer'
# Solution: Update imports to new paths
from src.analyzers.unified_analyzer import UnifiedAnalyzer
```

#### **2. Configuration Errors:**
```python
# Error: Configuration file not found
# Solution: Ensure config files are in the right location
ls config/unified_config.json
```

#### **3. Missing Environment Variables:**
```bash
# Error: Environment variable substitution failed
# Solution: Create .env file from template
cp .env.template .env
# Edit .env with your values
```

#### **4. MCP Connection Issues:**
```python
# Error: MCP servers not available
# Solution: Check MCP configuration and health
from src.integrations.mcp_integration import MCPIntegration
mcp = MCPIntegration(config)
health = await mcp.health_check()
print(health)
```

---

## 📈 **Benefits After Migration**

### **✅ Immediate Benefits:**
- **Single Source of Truth**: One analyzer, one config system
- **Better Error Handling**: Comprehensive logging and monitoring
- **Easier Maintenance**: Clear file organization
- **Faster Development**: Reduced code duplication

### **✅ Long-term Benefits:**
- **Improved Testing**: Organized test structure
- **Better Documentation**: Centralized knowledge base
- **Easier Deployment**: Containerized and organized
- **Team Collaboration**: Clear architecture and patterns

---

## 🔄 **Rollback Plan**

If you need to rollback:

1. **Backup Strategy:**
   ```bash
   # Create backup before migration
   cp -r . ../peds-analysis-backup
   ```

2. **Quick Rollback:**
   ```bash
   # Restore from backup
   cp -r ../peds-analysis-backup/* .
   ```

3. **Selective Rollback:**
   ```bash
   # Restore specific files
   cp backup/config.json .
   cp backup/analysis_config.json .
   ```

---

## 📞 **Migration Support**

### **If You Encounter Issues:**
1. Check the troubleshooting section above
2. Validate your configuration using the test commands
3. Review the file mapping guide for correct paths
4. Check logs in `logs/peds_analysis.log`

### **Migration Checklist:**
- [ ] Environment file created and configured
- [ ] Dependencies installed from new requirements.txt
- [ ] Configuration validated with no errors
- [ ] Test analysis runs successfully
- [ ] MCP servers are healthy
- [ ] Knowledge base files accessible
- [ ] Logging working correctly

---

*This migration improves the project structure significantly while maintaining all existing functionality. The new organization will make development, testing, and maintenance much easier.* 