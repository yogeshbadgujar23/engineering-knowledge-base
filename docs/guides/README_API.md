# Netcore Knowledge Base API

Transform your comprehensive Netcore debugging knowledge base into a powerful API for integration with n8n workflows, automation tools, and external systems.

## 🚀 Quick Start

### 1. **Simple Deployment**
```bash
# Install dependencies
pip install -r requirements_api.txt

# Start the API server
python api_server.py

# API will be available at: http://localhost:8000
# Interactive docs at: http://localhost:8000/docs
```

### 2. **Docker Deployment**
```bash
# Build and run with Docker Compose
docker-compose -f docker-compose-api.yml up -d

# Check health
curl http://localhost:8000/health
```

## 📡 API Endpoints

### **Search Knowledge Base**
```http
GET /search?q=AMP%20debugging&environment=POD2&component=AMP&limit=5
```

**Response:**
```json
{
  "query": "AMP debugging",
  "results": [
    {
      "title": "Debugging AMP for Email",
      "content": "Password : !QAZxsw2#EDC- Environment Component Name...",
      "category": "Email Campaign Management", 
      "environment": "POD2",
      "components": ["AMP", "Email"],
      "relevance_score": 0.9,
      "source_url": "https://netcoresolutions.atlassian.net/wiki/..."
    }
  ],
  "total_results": 15,
  "execution_time_ms": 45,
  "source": "Netcore Debugging Handbook"
}
```

### **Get Debugging Procedures**
```http
GET /debugging?component=Redis&environment=POD2
```

### **PEDS Analysis** 
```http
GET /peds-analysis?component=email&issue_type=delivery
```

**Response:**
```json
{
  "component": "email",
  "debugging_procedures": [...],
  "related_patterns": [
    "email configuration issues",
    "email performance degradation"
  ],
  "recommendations": [
    "Check email logs for error patterns",
    "Verify email configuration settings"
  ]
}
```

## 🔧 n8n Integration Examples

### **1. Debugging Assistant Workflow**

**Trigger**: Webhook receives debugging request
**Action**: Query knowledge base and send results to Slack

```javascript
// n8n HTTP Request Node Configuration
{
  "url": "http://localhost:8000/search",
  "method": "GET",
  "parameters": {
    "q": "={{$json.component}} {{$json.issue_description}}",
    "environment": "={{$json.environment}}",
    "limit": 5
  }
}
```

### **2. PEDS Ticket Analysis**

**Trigger**: Jira webhook (new PEDS ticket)
**Action**: Auto-generate analysis and update ticket

```javascript
// Extract component from Jira ticket
const components = $input.first().json.issue.fields.components;
const mainComponent = components[0]?.name || 'unknown';

// Query PEDS analysis
const analysisUrl = `http://localhost:8000/peds-analysis?component=${mainComponent}`;
```

### **3. Infrastructure Alert Response**

**Trigger**: Monitoring alert (Grafana/Prometheus)
**Action**: Find relevant runbooks and notify team

```javascript
// Format alert for knowledge base search
const searchQuery = `${alert.service} ${alert.alert_type} ${alert.environment}`;
const proceduresUrl = `http://localhost:8000/search?q=${encodeURIComponent(searchQuery)}`;
```

## 🎯 Use Cases

### **DevOps Automation**
- **Alert Response**: Automatically find runbooks for infrastructure alerts
- **Incident Management**: Provide debugging procedures during incidents  
- **Deployment Support**: Get environment-specific debugging info

### **QA Automation**
- **Test Failure Analysis**: Find debugging procedures for failed tests
- **Environment Setup**: Get configuration details for test environments
- **Issue Triage**: Auto-categorize and provide solutions for test issues

### **Support Automation**
- **Customer Issues**: Find solutions for customer-reported problems
- **Internal Tools**: Integrate with helpdesk systems
- **Knowledge Discovery**: Help teams find relevant documentation

## 🔍 Advanced Features

### **Vector Search (Optional)**
Enable semantic search with embeddings:

```bash
pip install sentence-transformers faiss-cpu
```

### **Caching Layer**
Add Redis for faster responses:

```yaml
# docker-compose-api.yml already includes Redis
services:
  redis:
    image: redis:7-alpine
```

### **Monitoring**
Add Prometheus metrics:

```python
from prometheus_client import Counter, Histogram
search_requests = Counter('kb_search_requests_total')
search_duration = Histogram('kb_search_duration_seconds')
```

## 🌐 Integration Patterns

### **Webhook Integration**
```json
{
  "webhook_url": "http://your-n8n-instance/webhook/debug-request",
  "payload": {
    "component": "AMP",
    "environment": "POD2", 
    "issue": "submission failing",
    "priority": "high"
  }
}
```

### **API Chaining**
```javascript
// Chain multiple API calls in n8n
1. Search knowledge base
2. Get specific procedures  
3. Analyze patterns
4. Generate recommendations
5. Update tickets/notifications
```

### **Scheduled Queries**
```javascript
// n8n Cron Node - Daily knowledge base health check
{
  "cron": "0 9 * * MON-FRI",
  "workflow": "knowledge-base-summary"
}
```

## 🛡️ Security & Production

### **Authentication** (Recommended)
```python
# Add API key authentication
from fastapi.security import APIKeyHeader

api_key_header = APIKeyHeader(name="X-API-Key")

@app.get("/search")
async def search(api_key: str = Depends(api_key_header)):
    if api_key != "your-secret-key":
        raise HTTPException(401, "Invalid API key")
```

### **Rate Limiting**
```python
from slowapi import Limiter, _rate_limit_exceeded_handler
from slowapi.util import get_remote_address

limiter = Limiter(key_func=get_remote_address)
app.state.limiter = limiter

@app.get("/search")
@limiter.limit("10/minute")
async def search(request: Request, ...):
```

### **CORS Configuration**
```python
# Configure for your domain
app.add_middleware(
    CORSMiddleware,
    allow_origins=["https://your-n8n-domain.com"],
    allow_credentials=True,
    allow_methods=["GET", "POST"],
    allow_headers=["*"],
)
```

## 📊 Monitoring & Analytics

### **Usage Metrics**
- Search query patterns
- Most requested components
- Response times
- Integration health

### **API Analytics**
```python
# Track popular searches
popular_queries = Counter()
response_times = []
component_requests = defaultdict(int)
```

## 🔄 Continuous Updates

### **Auto-sync with Knowledge Base**
```bash
# Webhook to reload knowledge base when updated
curl -X POST http://localhost:8000/reload-kb
```

### **Version Management**
```python
# API versioning
@app.get("/v1/search")  # Stable version
@app.get("/v2/search")  # Latest features
```

## 🚀 Deployment Options

### **Cloud Deployment**
- **AWS**: ECS/Fargate + ALB
- **Azure**: Container Instances + App Gateway  
- **GCP**: Cloud Run + Load Balancer
- **DigitalOcean**: App Platform

### **Self-hosted**
- **Docker**: Simple container deployment
- **Kubernetes**: Scalable cluster deployment
- **VM**: Traditional server deployment

## 💡 Next Steps

1. **Deploy the API** using Docker Compose
2. **Create n8n workflows** using the provided examples
3. **Set up monitoring** and alerting
4. **Integrate with your existing tools** (Jira, Slack, Teams)
5. **Scale** based on usage patterns

## 📞 Support

- **API Documentation**: `http://localhost:8000/docs`
- **Health Check**: `http://localhost:8000/health`
- **Categories**: `http://localhost:8000/categories`
- **Components**: `http://localhost:8000/components`

Transform your Netcore knowledge base into a powerful automation engine! 🚀 