# PEDS Analysis Automation - Project Structure

## 📁 **REORGANIZED Project Structure (August 2025)**

✅ **Reorganization Complete!** Root directory reduced from 65+ files to 32 files.

## 📁 **Current Project Organization**

```
PEDS-Analysis-Automation/
├── 📂 src/                           # Source code
│   ├── 📂 analyzers/                 # Core analysis engines
│   │   ├── unified_analyzer.py       # Main analyzer (consolidated)
│   │   ├── mcp_integration.py        # MCP tools integration
│   │   ├── knowledge_engine.py       # Knowledge base integration
│   │   └── pattern_matcher.py        # Issue pattern recognition
│   ├── 📂 automation/                # Automation scripts
│   │   ├── morning_automation.py     # Consolidated morning automation
│   │   ├── cron_manager.py          # Cron job management
│   │   └── workflow_orchestrator.py  # Workflow coordination
│   ├── 📂 servers/                   # Server implementations
│   │   ├── analysis_server.py        # Main analysis server
│   │   ├── health_monitor.py         # Health checking
│   │   └── api_endpoints.py          # REST API definitions
│   ├── 📂 integrations/              # External integrations
│   │   ├── jira_client.py            # Jira integration
│   │   ├── gitlab_client.py          # GitLab integration
│   │   ├── slack_client.py           # Slack notifications
│   │   └── sheets_client.py          # Google Sheets integration
│   └── 📂 utils/                     # Utility functions
│       ├── config_manager.py         # Unified configuration
│       ├── logger.py                 # Logging utilities
│       └── helpers.py                # Common helpers
├── 📂 config/                        # Configuration files
│   ├── production.json               # Production settings
│   ├── development.json              # Development settings
│   ├── mcp_config.json              # MCP server configurations
│   ├── peds-analysis-config.yaml     # PEDS analysis automation config
│   └── templates/                    # Config templates
├── 📂 docs/                          # Documentation
│   ├── 📂 templates/                 # Analysis and automation templates
│   │   └── peds-analysis-template.md # Standardized PEDS analysis template
│   ├── 📂 guides/                    # Usage and setup guides
│   │   └── peds-analysis-automation-guide.md # PEDS automation guide
│   ├── 📂 knowledge-base/            # Comprehensive knowledge base
│   │   ├── netcore-platform/         # Platform documentation
│   │   ├── testing-guidelines/       # QA testing framework
│   │   ├── defect-patterns/          # Issue patterns & fixes
│   │   └── integration-guides/       # Integration documentation
│   ├── 📂 api/                       # API documentation
│   ├── 📂 setup/                     # Setup and deployment guides
│   └── README.md                     # Main documentation
├── 📂 tests/                         # Test files
│   ├── 📂 unit/                      # Unit tests
│   ├── 📂 integration/               # Integration tests
│   └── 📂 automation/                # Automation tests
├── 📂 scripts/                       # Setup and deployment scripts
│   ├── 📂 setup/                     # Installation scripts
│   ├── 📂 deployment/                # Deployment automation
│   └── 📂 maintenance/               # Maintenance scripts
├── 📂 data/                          # Data files
│   ├── 📂 knowledge/                 # Knowledge base data
│   ├── 📂 templates/                 # Analysis templates
│   └── 📂 cache/                     # Temporary cache (gitignored)
├── 📂 logs/                          # Log files (gitignored)
├── requirements.txt                  # Unified dependencies
├── .env.template                     # Environment template
├── .gitignore                        # Git ignore rules
└── docker-compose.yml               # Container orchestration
```

## 🎯 **Use Case Organization**

### **📊 Analysis Use Cases**
```
src/analyzers/
├── unified_analyzer.py              # Main entry point
├── modes/
│   ├── dev_done_analysis.py         # Dev Done ticket analysis
│   ├── bug_analysis.py              # Bug investigation
│   ├── performance_analysis.py      # Performance issue analysis
│   └── integration_analysis.py      # Integration problem analysis
```

### **🤖 Automation Use Cases**
```
src/automation/
├── morning_automation.py            # Daily automation entry point
├── workflows/
│   ├── ticket_triage.py             # Automatic ticket triage
│   ├── qa_handoff.py                # QA handoff automation
│   └── reporting.py                 # Report generation
```

### **📚 Knowledge Base Use Cases**
```
docs/knowledge-base/
├── quick-reference/                 # Quick lookup guides
├── troubleshooting/                 # Step-by-step troubleshooting
├── best-practices/                  # QA best practices
└── architecture/                    # Platform architecture
```

## 🔧 **Configuration Strategy**

### **Unified Configuration Management**
- Single source of truth for all configurations
- Environment-specific overrides
- Template-based configuration generation
- Validation and schema enforcement

### **MCP Integration**
- Consolidated MCP server configurations
- Health monitoring and failover
- Unified MCP client interfaces
- Configuration validation

## 📈 **Benefits of New Structure**

1. **🎯 Clear Separation of Concerns**: Each directory has a specific purpose
2. **🔄 Reusable Components**: Modular design enables component reuse
3. **📚 Centralized Knowledge**: Single knowledge base location
4. **⚙️ Unified Configuration**: One place for all settings
5. **🧪 Testable Architecture**: Clear test organization
6. **📦 Easy Deployment**: Organized scripts and containers
7. **📖 Better Documentation**: Structured documentation approach
8. **🔍 Enhanced Discoverability**: Logical file organization

## 🚀 **Migration Benefits**

### **For Daily Use:**
- Faster ticket analysis (consolidated tools)
- Easier troubleshooting (organized knowledge base)
- Simplified configuration management
- Better error handling and logging

### **For Development:**
- Clearer code organization
- Easier testing and debugging
- Better documentation structure
- Simplified deployment process

### **For Maintenance:**
- Reduced code duplication
- Easier updates and patches
- Better monitoring and health checks
- Simplified backup and recovery

---

*This structure eliminates duplicates, improves organization, and enhances the project's usability for all stakeholders.* 