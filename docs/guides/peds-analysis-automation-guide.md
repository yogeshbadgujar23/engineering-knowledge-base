# PEDS Analysis Automation Guide

## 📋 Overview

This guide explains how to use the standardized PEDS analysis template for daily automation runs.

## 🏗️ Template Structure

### **Core Components:**
1. **Issue Analysis** - What was the problem?
2. **Code Changes Analysis** - What was changed to fix it?
3. **Root Cause Analysis** - Why did it happen?
4. **Business Impact** - Before/after comparison
5. **QA Testing Strategy** - How to test the fix
6. **Timeline Estimate** - How long QA will take
7. **Delivery Feasibility** - ACHIEVABLE vs AT RISK

## 🔧 Files Created

```
docs/templates/peds-analysis-template.md     # Main template
config/peds-analysis-config.yaml            # Configuration settings
docs/guides/peds-analysis-automation-guide.md # This guide
```

## 🚀 Usage in Automation

### **Template Variables:**
- `${PEDS_TICKET_KEY}` - Ticket number (e.g., PEDS-9733)
- `${CODE_REPOSITORIES}` - List of affected repositories
- `${TICKET_PRIORITY}` - P0, P1, P2, P3
- `${EXPECTED_RELEASE_DATE}` - Target delivery date

### **Delivery Feasibility Logic:**
```python
# Pseudo-code for automation
current_time = now()
qa_timeline = estimate_qa_duration(ticket)
expected_release = ticket.expected_release_date

if (current_time + qa_timeline) <= expected_release:
    feasibility = "✅ ACHIEVABLE"
else:
    feasibility = "❌ AT RISK"
```

## 🎯 Integration Points

### **With GitLab MCP:**
- **Automatic Link Detection:** Scans JIRA ticket for GitLab compare/MR links
- **Smart Fallback:** Shows "No GitLab diff/MR links found" when links missing
- **Multi-Repository Support:** Analyzes multiple repositories when found
- **Pattern Matching:** Uses regex to find GitLab URLs in ticket description/comments

### **With Jira MCP:**
- Pull ticket details and fields
- Get priority and timeline information
- Extract issue description and logs

### **With Knowledge Base:**
- Reference debugging handbook when applicable
- Include component-specific guidance
- Add reproduction steps when available

## 📊 Analysis Types

### **Volume/Trend Analysis:**
- Uses minimal filtering
- Shows true customer defect volume
- For executive reporting

### **QA-Specific Analysis:**
- Full filtering applied
- Focus on actionable items
- For operational insights

## 🔄 Daily Automation Workflow

1. **Fetch New/Updated PEDS tickets**
2. **Apply template structure**
3. **GitLab Link Detection:**
   - Scan ticket description, summary, and comments
   - Look for GitLab compare links (`/-/compare/`)
   - Look for GitLab MR links (`/-/merge_requests/`)
   - Extract project IDs and branch information
4. **Code Analysis:**
   - **If GitLab links found:** Fetch and analyze diffs using GitLab MCP
   - **If no links found:** Add "No GitLab diff/MR links found" note
5. **Assess delivery feasibility**
6. **Generate formatted report**
7. **Store for team review**

## 🔍 **GitLab Link Detection Patterns**

The automation searches for these URL patterns in JIRA tickets:
```regex
# Compare links
https://gitlab\.com/netcorecloud/.+/-/compare/.+

# Merge request links  
https://gitlab\.com/netcorecloud/.+/-/merge_requests/\d+

# @ prefixed links (common in descriptions)
@https://gitlab\.com/netcorecloud/.+
```

**Search Fields:** `description`, `summary`, `comments`

**Graceful Handling:** When no GitLab links found, automation continues with ticket analysis but notes that code changes analysis is unavailable.

## 📝 Customization

### **Adding New Sections:**
Simply add to the template file:
```markdown
## 🆕 **New Section Title**
[New section content]
```

### **Modifying Field Mappings:**
Update `config/peds-analysis-config.yaml`:
```yaml
jira_fields:
  custom_field: "customfield_XXXXX"
```

## 🎛️ Configuration Reference

Key settings in `peds-analysis-config.yaml`:
- **Template path** - Location of analysis template
- **Field mappings** - JIRA custom field IDs
- **Filtering rules** - Analysis type configurations
- **Delivery criteria** - Risk assessment rules

## ✅ Success Criteria

A good PEDS analysis should:
- ✅ Clearly explain the issue in simple terms
- ✅ Show relevant code changes with context
- ✅ Identify root cause accurately
- ✅ Provide realistic QA timeline
- ✅ Assess delivery feasibility properly
- ✅ Include actionable testing strategy

---

**Next Steps:**
1. Test template with sample PEDS tickets
2. Refine automation script integration
3. Add team feedback and improvements
4. Scale to daily production use