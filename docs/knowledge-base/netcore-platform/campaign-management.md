# Campaign Management System

## 🎯 Campaign Lifecycle

### Campaign States
```
Draft → Review → Scheduled → Active → Paused → Completed → Archived
                    ↓
                 Cancelled
```

### State Transitions
- **Draft**: Initial creation, editable
- **Review**: Pending approval, read-only
- **Scheduled**: Approved, waiting for start time
- **Active**: Currently running, limited edits
- **Paused**: Temporarily stopped, resumable
- **Completed**: Finished execution, read-only
- **Cancelled**: Stopped before completion
- **Archived**: Historical storage, minimal access

## 📊 Campaign Types by Channel

### Push Notifications
#### APN (Apple Push Notification)
- **Status Values**: 0=Draft, 1=Active, 2=Paused, 3=Completed, 8=Deleted
- **Key Fields**: campaign_id, title, message, badge_count, sound
- **Delivery Tracking**: sent_count, delivered_count, opened_count
- **Common Issues**: Certificate expiry, invalid device tokens

#### BPN (Browser Push Notification)
- **Status Values**: Same as APN
- **Key Fields**: campaign_id, title, message, icon_url, action_url
- **Delivery Tracking**: sent_count, clicked_count, dismissed_count
- **Common Issues**: Browser compatibility, permission handling

### Email Campaigns
- **Status Values**: 0=Draft, 1=Scheduled, 2=Sending, 3=Sent, 4=Failed
- **Key Fields**: subject, sender_name, sender_email, html_content
- **Delivery Tracking**: sent_count, delivered_count, opened_count, clicked_count
- **Common Issues**: Spam filters, domain authentication, template rendering

### SMS Campaigns
- **Status Values**: 0=Draft, 1=Queued, 2=Sending, 3=Sent, 4=Failed
- **Key Fields**: message_text, sender_id, country_code
- **Delivery Tracking**: sent_count, delivered_count, failed_count
- **Common Issues**: Character limits, international routing, carrier blocking

### WhatsApp Campaigns
- **Status Values**: 0=Draft, 1=Approved, 2=Sending, 3=Sent, 4=Rejected
- **Key Fields**: template_name, parameters, media_url
- **Delivery Tracking**: sent_count, delivered_count, read_count
- **Common Issues**: Template approval, media format validation

### RCS Campaigns
- **Status Values**: 0=Draft, 1=Validated, 2=Sending, 3=Sent, 4=Failed
- **Key Fields**: rich_content, suggested_actions, media_files
- **Delivery Tracking**: sent_count, delivered_count, interacted_count
- **Common Issues**: Carrier support, rich content validation

## 🔄 Campaign Operations

### Creation Workflow
1. **Basic Info**: Name, description, channel selection
2. **Audience**: Segment selection or upload
3. **Content**: Message creation and personalization
4. **Schedule**: Timing and frequency configuration
5. **Review**: Validation and approval process
6. **Launch**: Final activation and monitoring

### Editing Capabilities
- **Draft State**: Full editing allowed
- **Scheduled State**: Limited to schedule and audience
- **Active State**: Only pause/stop operations
- **Paused State**: Resume or modify schedule
- **Completed State**: View-only access

### Deletion Process
- **Soft Delete**: Set status = 8, maintain data
- **Hard Delete**: Physical removal from database
- **Retention Policy**: Archive after 2 years
- **Audit Trail**: Track all deletion operations

## 📋 Campaign Configuration

### Audience Management
- **Segment Types**: Static, Dynamic, Behavioral
- **Targeting Rules**: Demographics, behavior, custom attributes
- **Exclusion Lists**: Suppression and opt-out management
- **A/B Testing**: Split testing configuration

### Content Management
- **Templates**: Reusable message templates
- **Personalization**: Dynamic content insertion
- **Media Assets**: Images, videos, documents
- **Multilingual**: Language-specific content

### Scheduling Options
- **Immediate**: Send right away
- **Scheduled**: Single send at specific time
- **Recurring**: Daily, weekly, monthly patterns
- **Trigger-based**: Event-driven campaigns
- **Time Zone**: Customer timezone consideration

## 🎯 Campaign Performance

### Key Metrics
- **Delivery Rate**: Successfully delivered / Total sent
- **Open Rate**: Opened / Delivered (Email, Push)
- **Click Rate**: Clicked / Delivered
- **Conversion Rate**: Conversions / Delivered
- **Unsubscribe Rate**: Unsubscribes / Delivered

### Real-time Monitoring
- **Send Progress**: Live delivery status
- **Error Tracking**: Failed delivery reasons
- **Performance Alerts**: Threshold-based notifications
- **Quality Scores**: Engagement quality metrics

### Historical Analysis
- **Trend Analysis**: Performance over time
- **Comparative Analysis**: Campaign comparisons
- **Cohort Analysis**: Audience behavior patterns
- **Attribution Analysis**: Revenue attribution

## 🚨 Common Issues & Troubleshooting

### Campaign Creation Issues
- **Validation Errors**: Required field validation
- **Audience Issues**: Empty or invalid segments
- **Content Problems**: Template rendering errors
- **Permission Errors**: Insufficient user permissions

### Delivery Issues
- **Queue Congestion**: High volume delays
- **Provider Limitations**: Channel-specific limits
- **Authentication Failures**: Invalid credentials
- **Content Blocking**: Spam/content filters

### Performance Issues
- **Low Delivery Rates**: Provider or content issues
- **High Bounce Rates**: Invalid contact data
- **Poor Engagement**: Content or timing issues
- **Technical Errors**: System or integration problems

## 🔧 Database Schema

### Core Campaign Tables
```sql
-- Main campaign table
campaigns (
    id, name, description, channel, status, 
    created_at, updated_at, scheduled_at,
    audience_count, sent_count, delivered_count
)

-- Campaign content
campaign_content (
    campaign_id, content_type, subject, 
    message, html_content, media_urls
)

-- Campaign audience
campaign_audience (
    campaign_id, segment_id, customer_id,
    inclusion_type, added_at
)

-- Delivery tracking
campaign_delivery (
    campaign_id, customer_id, channel,
    sent_at, delivered_at, opened_at, clicked_at
)
```

### Status Code Mapping
```json
{
  "0": "Draft",
  "1": "Scheduled/Active", 
  "2": "Paused",
  "3": "Completed",
  "4": "Failed",
  "8": "Deleted",
  "9": "Archived"
}
```

## 🧪 QA Testing Guidelines

### Pre-Launch Testing
- **Content Validation**: Template rendering across devices
- **Audience Verification**: Segment accuracy and size
- **Schedule Testing**: Timezone and timing validation
- **Permission Checks**: User access and approval flows

### Post-Launch Monitoring
- **Delivery Tracking**: Real-time send monitoring
- **Error Detection**: Failed delivery identification
- **Performance Validation**: Metrics accuracy verification
- **System Health**: Resource usage monitoring

### Regression Testing
- **Campaign CRUD**: Create, read, update, delete operations
- **Status Transitions**: All valid state changes
- **Cross-Channel**: Multi-channel campaign coordination
- **Integration Points**: External service connections

---
*Last Updated: {{current_date}}*
*Version: 1.0* 