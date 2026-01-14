# API Documentation

## 🎯 API Architecture

### REST API Structure
```
https://api.smartech.netcorecloud.com/v2/
├── campaigns/          # Campaign management
├── audiences/          # Audience and segmentation
├── analytics/          # Performance metrics
├── templates/          # Message templates
├── integrations/       # Third-party integrations
└── webhooks/          # Event notifications
```

### Authentication
- **API Key**: Header-based authentication
- **JWT Tokens**: Time-limited access tokens
- **OAuth 2.0**: Third-party application access
- **Rate Limiting**: 1000 requests/hour per API key

## 📊 Campaign APIs

### Campaign CRUD Operations

#### Create Campaign
```http
POST /v2/campaigns
Content-Type: application/json
Authorization: Bearer {token}

{
  "name": "Summer Sale 2024",
  "description": "Promotional campaign for summer products",
  "channel": "email",
  "audience_id": "aud_123456",
  "template_id": "tpl_789012",
  "schedule": {
    "type": "immediate|scheduled|recurring",
    "send_at": "2024-07-15T10:00:00Z",
    "timezone": "UTC"
  },
  "options": {
    "track_opens": true,
    "track_clicks": true,
    "unsubscribe_link": true
  }
}
```

**Response:**
```json
{
  "id": "cmp_987654",
  "status": "draft",
  "created_at": "2024-07-01T09:00:00Z",
  "estimated_audience": 15420,
  "validation": {
    "valid": true,
    "warnings": [],
    "errors": []
  }
}
```

#### Get Campaign
```http
GET /v2/campaigns/{campaign_id}
Authorization: Bearer {token}
```

**Response:**
```json
{
  "id": "cmp_987654",
  "name": "Summer Sale 2024",
  "status": "active",
  "channel": "email",
  "metrics": {
    "sent": 15420,
    "delivered": 15185,
    "opened": 4555,
    "clicked": 912,
    "bounced": 235,
    "unsubscribed": 23
  },
  "created_at": "2024-07-01T09:00:00Z",
  "updated_at": "2024-07-15T10:05:00Z"
}
```

#### Update Campaign
```http
PUT /v2/campaigns/{campaign_id}
Content-Type: application/json
Authorization: Bearer {token}

{
  "name": "Updated Campaign Name",
  "schedule": {
    "send_at": "2024-07-16T10:00:00Z"
  }
}
```

#### Delete Campaign
```http
DELETE /v2/campaigns/{campaign_id}
Authorization: Bearer {token}
```

**Response:**
```json
{
  "message": "Campaign deleted successfully",
  "status": "deleted",
  "deleted_at": "2024-07-01T12:00:00Z"
}
```

### Campaign Status Management

#### Start Campaign
```http
POST /v2/campaigns/{campaign_id}/start
Authorization: Bearer {token}
```

#### Pause Campaign
```http
POST /v2/campaigns/{campaign_id}/pause
Authorization: Bearer {token}
```

#### Resume Campaign
```http
POST /v2/campaigns/{campaign_id}/resume
Authorization: Bearer {token}
```

## 👥 Audience APIs

### Audience Management

#### Create Audience
```http
POST /v2/audiences
Content-Type: application/json
Authorization: Bearer {token}

{
  "name": "High Value Customers",
  "description": "Customers with >$1000 lifetime value",
  "type": "dynamic|static",
  "criteria": {
    "filters": [
      {
        "field": "lifetime_value",
        "operator": "greater_than",
        "value": 1000
      },
      {
        "field": "last_purchase",
        "operator": "within_days",
        "value": 90
      }
    ],
    "logic": "AND"
  }
}
```

#### Upload Audience
```http
POST /v2/audiences/{audience_id}/upload
Content-Type: multipart/form-data
Authorization: Bearer {token}

file: contacts.csv
mapping: {
  "email": "email_address",
  "name": "full_name",
  "phone": "mobile_number"
}
```

#### Get Audience Size
```http
GET /v2/audiences/{audience_id}/size
Authorization: Bearer {token}
```

## 📈 Analytics APIs

### Campaign Analytics

#### Campaign Performance
```http
GET /v2/analytics/campaigns/{campaign_id}
Authorization: Bearer {token}
Query Parameters:
- start_date: 2024-07-01
- end_date: 2024-07-31
- metrics: sent,delivered,opened,clicked
- breakdown: daily|hourly
```

**Response:**
```json
{
  "campaign_id": "cmp_987654",
  "period": {
    "start": "2024-07-01T00:00:00Z",
    "end": "2024-07-31T23:59:59Z"
  },
  "metrics": {
    "sent": 15420,
    "delivered": 15185,
    "opened": 4555,
    "clicked": 912,
    "bounced": 235,
    "unsubscribed": 23,
    "conversion_rate": 5.9,
    "roi": 450.25
  },
  "breakdown": [
    {
      "date": "2024-07-15",
      "sent": 15420,
      "delivered": 15185,
      "opened": 4555
    }
  ]
}
```

#### Audience Analytics
```http
GET /v2/analytics/audiences/{audience_id}
Authorization: Bearer {token}
```

#### Channel Performance
```http
GET /v2/analytics/channels
Authorization: Bearer {token}
Query Parameters:
- channels: email,sms,push
- period: 7d|30d|90d|custom
```

## 🔧 Template APIs

### Template Management

#### Create Template
```http
POST /v2/templates
Content-Type: application/json
Authorization: Bearer {token}

{
  "name": "Welcome Email",
  "channel": "email",
  "type": "transactional|marketing",
  "content": {
    "subject": "Welcome to {{company_name}}!",
    "html": "<html>...</html>",
    "text": "Welcome {{first_name}}...",
    "variables": ["company_name", "first_name"]
  },
  "metadata": {
    "category": "onboarding",
    "tags": ["welcome", "new-user"]
  }
}
```

#### Render Template
```http
POST /v2/templates/{template_id}/render
Content-Type: application/json
Authorization: Bearer {token}

{
  "variables": {
    "first_name": "John",
    "company_name": "Acme Corp",
    "discount_code": "SAVE20"
  },
  "preview_mode": true
}
```

## 🔗 Integration APIs

### Webhook Management

#### Create Webhook
```http
POST /v2/webhooks
Content-Type: application/json
Authorization: Bearer {token}

{
  "url": "https://your-app.com/webhooks/smartech",
  "events": [
    "campaign.sent",
    "campaign.delivered", 
    "campaign.opened",
    "campaign.clicked"
  ],
  "secret": "webhook_secret_key",
  "active": true
}
```

#### Webhook Events
```json
{
  "event": "campaign.delivered",
  "timestamp": "2024-07-15T10:05:30Z",
  "data": {
    "campaign_id": "cmp_987654",
    "contact_id": "ct_123456",
    "channel": "email",
    "status": "delivered",
    "metadata": {
      "delivery_time": "2024-07-15T10:05:28Z",
      "provider": "sendgrid"
    }
  },
  "signature": "sha256=..."
}
```

### Third-Party Integrations

#### CRM Integration
```http
POST /v2/integrations/crm
Content-Type: application/json
Authorization: Bearer {token}

{
  "provider": "salesforce|hubspot|pipedrive",
  "credentials": {
    "api_key": "crm_api_key",
    "instance_url": "https://company.salesforce.com"
  },
  "sync_settings": {
    "contacts": true,
    "leads": true,
    "opportunities": false,
    "sync_frequency": "hourly"
  }
}
```

#### E-commerce Integration
```http
POST /v2/integrations/ecommerce
Content-Type: application/json
Authorization: Bearer {token}

{
  "provider": "shopify|woocommerce|magento",
  "store_url": "https://store.shopify.com",
  "webhook_endpoints": {
    "order_created": "/webhooks/order-created",
    "order_updated": "/webhooks/order-updated",
    "customer_created": "/webhooks/customer-created"
  }
}
```

## 🛠️ Utility APIs

### Data Management

#### Import Contacts
```http
POST /v2/contacts/import
Content-Type: multipart/form-data
Authorization: Bearer {token}

file: contacts.csv
options: {
  "update_existing": true,
  "skip_invalid": false,
  "validate_email": true
}
```

#### Export Data
```http
POST /v2/exports
Content-Type: application/json
Authorization: Bearer {token}

{
  "type": "contacts|campaigns|analytics",
  "filters": {
    "date_range": {
      "start": "2024-07-01",
      "end": "2024-07-31"
    },
    "status": ["active", "completed"]
  },
  "format": "csv|json|xlsx",
  "email_when_ready": true
}
```

### Validation APIs

#### Email Validation
```http
POST /v2/validate/email
Content-Type: application/json
Authorization: Bearer {token}

{
  "emails": [
    "test@example.com",
    "user@domain.com"
  ]
}
```

**Response:**
```json
{
  "results": [
    {
      "email": "test@example.com",
      "valid": true,
      "risk": "low",
      "details": {
        "syntax": true,
        "domain": true,
        "mx_record": true,
        "disposable": false
      }
    }
  ]
}
```

## 🚨 Error Handling

### Error Response Format
```json
{
  "error": {
    "code": "INVALID_REQUEST",
    "message": "The request is invalid",
    "details": {
      "field": "email",
      "issue": "Invalid email format"
    },
    "request_id": "req_123456789"
  }
}
```

### Common Error Codes
| Code | HTTP Status | Description |
|------|-------------|-------------|
| UNAUTHORIZED | 401 | Invalid or missing authentication |
| FORBIDDEN | 403 | Insufficient permissions |
| NOT_FOUND | 404 | Resource does not exist |
| INVALID_REQUEST | 400 | Malformed request data |
| RATE_LIMITED | 429 | Too many requests |
| SERVER_ERROR | 500 | Internal server error |

### Rate Limiting
```http
HTTP/1.1 429 Too Many Requests
X-RateLimit-Limit: 1000
X-RateLimit-Remaining: 0
X-RateLimit-Reset: 1627846800
Retry-After: 3600

{
  "error": {
    "code": "RATE_LIMITED",
    "message": "Rate limit exceeded"
  }
}
```

## 🧪 Testing Guidelines

### API Testing Checklist
- **Authentication**: Valid/invalid credentials
- **Input Validation**: Required fields, data types, formats
- **Rate Limiting**: Exceed limits and verify responses
- **Error Handling**: Test all error scenarios
- **Data Consistency**: Verify CRUD operations
- **Performance**: Response time under load

### Test Data Management
- **Test Audiences**: Use non-production contact lists
- **Test Templates**: Clearly marked test content
- **Test Campaigns**: Prefix with "TEST_" identifier
- **Cleanup**: Automated test data removal

---
*Last Updated: {{current_date}}*
*Version: 2.0* 