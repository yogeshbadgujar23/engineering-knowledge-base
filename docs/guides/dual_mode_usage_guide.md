# Dual-Mode QA Analysis System Guide

## 🎯 Overview

The Dual-Mode QA Analysis System provides two complementary approaches for ticket analysis:

1. **Headless Mode**: Direct API integration for automation (Google Cloud, CI/CD)
2. **MCP Mode**: Rich Jira/GitLab integration for manual analysis in Cursor

## 🚀 Quick Start

### Server Startup
```bash
python3 simple_headless_server.py
```

Server runs on: `http://localhost:5000`

## 🔧 Available Endpoints

### Health Check
```bash
curl http://localhost:5000/health
```

### Mode Control
```bash
# Get current mode
curl http://localhost:5000/mode

# Set mode to headless
curl -X POST http://localhost:5000/mode -H "Content-Type: application/json" -d '{"mode": "headless"}'

# Set mode to MCP
curl -X POST http://localhost:5000/mode -H "Content-Type: application/json" -d '{"mode": "mcp"}'
```

### Testing
```bash
# Test with specific mode
curl "http://localhost:5000/test?ticket=PEDS-1000&mode=headless"
curl "http://localhost:5000/test?ticket=PEDS-1000&mode=mcp"
```

### Analysis Endpoints
```bash
# Headless analysis (for automation)
curl -X POST http://localhost:5000/analyze \
  -H "Content-Type: application/json" \
  -d '{"ticket_id": "PEDS-1000"}'

# MCP analysis (for Cursor)
curl -X POST http://localhost:5000/analyze-mcp \
  -H "Content-Type: application/json" \
  -d '{"ticket_id": "PEDS-1000"}'
```

## 🤖 Headless Mode

### Purpose
- **Google Cloud automation**
- **CI/CD pipeline integration**
- **Webhook responses**
- **Batch processing**

### Features
- Direct Jira API calls
- Fast response times
- No manual intervention required
- Basic rule-based analysis

### Use Cases
```bash
# Google Cloud Function trigger
POST /analyze
{
  "ticket_id": "PEDS-1000"
}

# Response
{
  "status": "success",
  "mode": "headless",
  "result": {
    "success": true,
    "ticket_id": "PEDS-1000",
    "summary": "invalid email address added in system",
    "issue_type": "Bug",
    "analysis": {
      "qa_required": true,
      "testing_scope": "full",
      "risk_level": "medium",
      "recommendations": []
    },
    "mode": "headless",
    "timestamp": "2025-07-08T18:35:13.303102"
  }
}
```

## 🛠️ MCP Mode

### Purpose
- **Manual analysis in Cursor**
- **Rich contextual information**
- **Comprehensive QA planning**
- **Interactive exploration**

### Features
- Jira MCP tool integration
- GitLab MCP tool integration
- Related issue analysis
- Comprehensive risk assessment
- Detailed QA recommendations

### Use Cases
```bash
# Cursor manual analysis
POST /analyze-mcp
{
  "ticket_id": "PEDS-1000"
}

# Response
{
  "status": "success",
  "mode": "mcp",
  "result": {
    "analysis_type": "comprehensive_mcp",
    "content_analysis": {
      "change_type": "general",
      "affected_areas": [],
      "complexity_indicators": [],
      "customer_impact": {
        "level": "medium",
        "factors": []
      },
      "testing_hints": []
    },
    "qa_recommendations": {
      "testing_scope": "standard",
      "priority_areas": [],
      "regression_testing": "Standard regression testing",
      "automation_opportunities": [],
      "collaboration_needs": ["Coordinate with assignee"],
      "timeline_estimate": "1-3 days"
    },
    "risk_assessment": {
      "level": "low",
      "factors": [],
      "mitigation": []
    },
    "mcp_features": {
      "jira_integration": "Available for rich issue data",
      "gitlab_integration": "Available for code context",
      "related_issues": "Available for pattern analysis",
      "comprehensive_analysis": "Full QA workflow support"
    }
  }
}
```

## 🔄 Integration Scenarios

### 1. Google Cloud Automation
```python
# Google Cloud Function
import requests

def jira_webhook_handler(request):
    ticket_id = request.json.get('issue', {}).get('key')
    
    # Use headless mode for automation
    response = requests.post('http://your-server:5000/analyze', 
                           json={'ticket_id': ticket_id})
    
    analysis = response.json()
    
    # Process results automatically
    if analysis['result']['analysis']['qa_required']:
        # Trigger QA workflow
        pass
```

### 2. Cursor Manual Analysis
```python
# In Cursor with MCP tools available
import asyncio

async def analyze_ticket_in_cursor(ticket_id):
    # Use MCP mode for rich analysis
    response = await requests.post('http://localhost:5000/analyze-mcp',
                                 json={'ticket_id': ticket_id})
    
    analysis = response.json()
    
    # Rich analysis available for manual review
    return analysis['result']
```

### 3. Hybrid Workflow
```python
# Start with headless for quick triage
quick_analysis = requests.post('/analyze', json={'ticket_id': 'PEDS-1000'})

if quick_analysis.json()['result']['analysis']['risk_level'] == 'high':
    # Escalate to MCP mode for detailed analysis
    detailed_analysis = requests.post('/analyze-mcp', 
                                    json={'ticket_id': 'PEDS-1000'})
```

## 🎛️ Configuration

### Environment Variables
```bash
# .env file
JIRA_URL=https://netcoresolutions.atlassian.net
JIRA_TOKEN=your_jira_token
JIRA_EMAIL="your_email@example.com"
ANALYSIS_MODE=auto  # auto, headless, mcp
HEADLESS_MODE=true
AUTO_APPROVE_ANALYSIS=true
```

### Mode Selection Logic
- **auto**: Automatically choose based on context
- **headless**: Force headless mode (for automation)
- **mcp**: Force MCP mode (for manual analysis)

## 🚦 Workflow Examples

### Automation Workflow
1. Jira webhook triggers Google Cloud Function
2. Function calls `/analyze` endpoint (headless mode)
3. Server returns quick analysis
4. Based on results, automatic actions taken
5. No manual intervention required

### Manual Analysis Workflow
1. QA engineer opens Cursor
2. Uses MCP tools to call `/analyze-mcp` endpoint
3. Server leverages MCP Jira/GitLab tools
4. Returns comprehensive analysis
5. Engineer uses rich data for planning

### Hybrid Workflow
1. Automation performs initial triage (headless)
2. High-risk tickets escalated to manual review
3. Manual review uses MCP mode for deep analysis
4. Results feed back into automation system

## 🔍 Analysis Comparison

| Feature | Headless Mode | MCP Mode |
|---------|---------------|----------|
| **Speed** | Fast | Moderate |
| **Automation** | Full | Manual |
| **Data Richness** | Basic | Comprehensive |
| **Jira Integration** | Direct API | MCP Tools |
| **GitLab Integration** | None | MCP Tools |
| **Related Issues** | None | Full Analysis |
| **Risk Assessment** | Basic | Detailed |
| **QA Recommendations** | Simple | Comprehensive |
| **Use Case** | CI/CD, Webhooks | Manual Planning |

## 🎯 Best Practices

### For Automation (Headless)
- Use for initial ticket triage
- Implement in CI/CD pipelines
- Set up webhook responses
- Monitor via health endpoint

### For Manual Analysis (MCP)
- Use for complex ticket analysis
- Leverage in Cursor environment
- Combine with MCP Jira/GitLab tools
- Use for QA planning sessions

### For Hybrid Approach
- Start with headless for speed
- Escalate to MCP for complexity
- Use mode switching based on criteria
- Maintain both capabilities

## 🛡️ Error Handling

### Fallback Strategy
- MCP mode falls back to headless if MCP tools unavailable
- Headless mode provides basic analysis if Jira API fails
- Health endpoint monitors both modes

### Monitoring
```bash
# Check server health
curl http://localhost:5000/health

# Test authentication
curl http://localhost:5000/debug-auth
```

## 🚀 Next Steps

1. **Deploy to Production**: Use proper WSGI server (Gunicorn, uWSGI)
2. **Add Authentication**: Implement API key authentication
3. **Scale Horizontally**: Deploy multiple instances
4. **Monitor Performance**: Add logging and metrics
5. **Enhance MCP Integration**: Add real MCP tool calls when available

This dual-mode system gives you the best of both worlds: automation-ready headless analysis AND rich MCP-powered manual analysis! 