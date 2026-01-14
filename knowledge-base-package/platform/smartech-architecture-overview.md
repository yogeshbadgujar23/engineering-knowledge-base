# Smartech Platform Architecture Overview

## 🏗️ System Architecture

### High-Level Component Structure
```
┌─────────────────────────────────────────────────────────────┐
│                    Client Layer                             │
├─────────────────────────────────────────────────────────────┤
│                    API Gateway                              │
├─────────────────────────────────────────────────────────────┤
│  Campaign Mgmt  │  User Mgmt   │  Analytics  │  Templates   │
├─────────────────────────────────────────────────────────────┤
│          Core Services & Business Logic                     │
├─────────────────────────────────────────────────────────────┤
│   MySQL DB    │   Redis Cache │  MongoDB    │   Vertica    │
└─────────────────────────────────────────────────────────────┘
```

### Core Components

#### **Campaign Management System**
- **Purpose**: Create, manage, and execute marketing campaigns
- **Key Features**: Template management, scheduling, targeting
- **Common Issues**: Campaign status transitions, deletion handling
- **Database**: MySQL (primary), Redis (cache)

#### **User Management & Analytics**
- **Purpose**: User data collection, segmentation, analytics
- **Key Features**: Attribute management, journey tracking, reports
- **Common Issues**: Data synchronization, attribute creation/deletion
- **Database**: Vertica (analytics), MongoDB (user data)

#### **Channel Integration Layer**
- **Purpose**: Multi-channel message delivery (Email, SMS, Push, WhatsApp)
- **Key Features**: Provider integration, delivery tracking, personalization
- **Common Issues**: Delivery failures, template rendering, API timeouts
- **Dependencies**: External service providers

#### **Template & Content Management**
- **Purpose**: Dynamic content creation and personalization
- **Key Features**: Template editor, personalization tokens, preview
- **Common Issues**: Rendering errors, dynamic content validation
- **Database**: MySQL (metadata), File storage (assets)

## 🔄 Data Flow Patterns

### Campaign Execution Flow
```
User Creates Campaign → Template Processing → Audience Segmentation → 
Channel Routing → Delivery Execution → Analytics Collection
```

### User Data Flow
```
Data Ingestion → Attribute Processing → MongoDB/Vertica Storage → 
Segmentation Engine → Campaign Targeting → Delivery Personalization
```

### Common Integration Points
1. **External APIs**: Third-party service integrations
2. **Webhook Processing**: Real-time event handling
3. **File Processing**: Bulk data imports/exports
4. **Reporting Systems**: Analytics and dashboard data

## 💾 Database Architecture

### **MySQL (Primary Transactional)**
- **Usage**: Campaign data, user management, system configuration
- **Tables**: campaigns, templates, users, client_config
- **Common Issues**: Query performance, data consistency

### **Redis (Caching Layer)**
- **Usage**: Session management, temporary data, rate limiting
- **Structure**: Key-value pairs, TTL-based expiration
- **Common Issues**: Memory usage, cache invalidation

### **MongoDB (User Data)**
- **Usage**: User attributes, behavioral data, event tracking
- **Collections**: userDetails, userAttributes, events
- **Common Issues**: Data migration, collection routing

### **Vertica (Analytics)**
- **Usage**: Large-scale analytics, reporting, data warehousing
- **Tables**: User analytics, campaign metrics, historical data
- **Common Issues**: Data type mapping, bulk operations

## 🔧 Infrastructure Components

### **API Layer**
- **Technology**: Go-based microservices
- **Features**: Authentication, rate limiting, request routing
- **Common Issues**: Timeout handling, error responses

### **Message Queue System**
- **Purpose**: Asynchronous task processing
- **Usage**: Email sending, data processing, webhook handling
- **Common Issues**: Queue backlog, processing failures

### **File Storage**
- **Purpose**: Template assets, user uploads, reports
- **Types**: Local storage, cloud storage (S3-compatible)
- **Common Issues**: File access, storage limits

### **Monitoring & Logging**
- **Components**: Application logs, metrics collection, alerting
- **Usage**: Performance monitoring, error tracking, debugging
- **Common Issues**: Log volume, metric accuracy

## 🚀 Deployment Architecture

### **Multi-IDC Setup**
- **IND IDC**: Primary deployment region
- **US IDC**: Secondary deployment region  
- **EU IDC**: Secondary deployment region

### **Deployment Process**
1. **Development** → Staging validation
2. **IND IDC** → First production deployment
3. **US/EU IDCs** → Secondary region rollout

### **Common Deployment Issues**
- Configuration drift between IDCs
- Database migration synchronization
- Cache warming and invalidation
- Service dependency coordination

## 🔍 Troubleshooting Context

### **Performance Bottlenecks**
- Database query optimization
- Cache hit rate improvements
- API response time optimization
- Background job processing

### **Data Consistency Issues**
- Cross-database synchronization
- Cache coherence problems
- Eventual consistency scenarios
- Data migration conflicts

### **Integration Failures**
- External API timeouts
- Authentication failures
- Webhook processing errors
- File processing issues

### **Scalability Challenges**
- Database connection pooling
- Memory usage optimization
- Queue capacity planning
- Load balancing configuration

---

*This architecture overview provides context for understanding system behavior, identifying root causes, and planning effective testing strategies for PEDS analysis.*
