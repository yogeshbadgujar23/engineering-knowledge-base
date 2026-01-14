# Netcore Jira Usage Guide - Complete Reference

## 📋 Organization Structure

### Product Streams
**Two main product streams:**
- **CPAAS** (Communication Platform as a Service)
- **CE** (Customer Engagement)

### Project Distribution by Stream

#### CPAAS Projects
- MOB (Mobile)
- WAPP (WhatsApp)
- PEPI (CPAAS Engineering Process Integration)
- RCS (Rich Communication Services)
- **CPEDS** (CPAAS Customer Defects)

#### CE Projects  
- SMT (Smart Marketing Tools)
- CEPI (CE Process Integration)
- **PEDS** (CE Customer Defects)

---

## 🎫 PEDS/CPEDS: Customer Defect Management

### Project Purpose
- **PEDS & CPEDS**: Customer-reported defect tracking projects
- **Source**: Logged by SRE team based on input from Salesforce via CSM team
- **Key Analysis Focus**: PEDS tickets of type **'Bug'** (not Tasks)

### Issue Types
- **Bug**: High priority customer-reported defects (SLA-driven)
- **Task**: Generally lower priority, no strict SLA requirements

---

## 🔄 Ticket Workflow & Status Definitions

### Status Flow (Chronological Order)
1. **OPEN** → Initial status after ticket creation, no action taken
2. **ANALYSIS IP** → Dev team + SRE analyzing reported issue
3. **DEVELOPMENT IP** → Development team working on fix
4. **DEV DONE** → Development complete, ready for QA
5. **QA IN PROGRESS** → QA team testing and regression
6. **READY FOR DEPLOYMENT** → QA complete, awaiting QRB/audit approval
7. **CLOSED** → Issue resolved and deployed

### Special Statuses
- **WAITING FOR PRODUCT** → Assigned to product team for clarification
- **DEPENDENCY** → Blocked by external dependency
- **CLOSED - WAITING FOR PERMANENT FIX** → Temporary solution provided, permanent fix tracked separately

---

## 📝 Ticket Structure & Content

### Core Fields
- **Summary**: Brief issue description
- **Description**: Detailed issue with logs, client recordings
- **RCA**: Root Cause Analysis
- **Resolution Description**: How the issue was fixed
- **Impact Areas**: Areas requiring testing post-fix
- **Release Branch Details**: Component names, fix branch, dev details, code diff links

### Key Stakeholder Fields
- **Assignee**: Current ticket owner
- **Reporter**: Usually 'Aparna' or 'SRE'
- **QA Owner**: QA person responsible for testing
- **Dev Owner**: Primary developer for the fix

### Date Fields
- **Created Date**: Date when the issue was originally created in Jira
- **Updated Time**: Latest update timestamp, regardless of current ticket status
- **Client Commitment Date [SRE]**: Date communicated to client for fix delivery
- **Exp Dev End Date**: Expected development completion
- **Exp Release Date**: Expected deployment across all IDCs (must not exceed Client Commitment Date)

### Components
- Represents the component where issue occurred
- Indicates which team handles the fix

---

## 🏷️ Labels & Categorization

### Default Labels
- **Freshdesk_ticket_linked**: All PEDS have this (client-reported via CSM)

### Priority Labels
- **T50**: Top 50 client issues (highest priority - churn risk)
- **T100**: Top 100 client issues (second priority)
- **onboarding**: Client onboarding issues (priority regardless of timeline)

### Issue Type Labels
- **Configuration_issue**: Fixed by DevOps/Dev only (no QA)
- **Release_issue**: Introduced by recent release (critical for analysis)
- **incident**: One-time infrastructure issues (may skip QA if well-explained)
- **data_discrepancy**: Data issues fixed by DBA/Dev (no QA)

### SLA Tracking Labels
- **SLA_Meet**: Delivered on time
- **SLA_Missed**: Delayed delivery
- **Dev_SLA_Missed**: Development phase delayed

---

## ⏰ SLA Requirements & Timeline Analysis

### **CRITICAL: Use Severity for Timeline Calculations**
**For all timeline-related analysis, use PEDS Severity field (NOT Priority)**

### Severity-Based SLA
- **Blocker**: Same day (or next day if logged in second half)
- **Critical**: 10 working days
- **Major**: 1 month (including weekends)

---

## 🚀 Deployment Process

### IDC Deployment Sequence
1. **IND IDC** → First deployment and verification
2. **US & EU IDCs** → Following days (except for blockers)

### Deployment Rules
- **Blockers**: All IDCs same day
- **Non-blockers**: IND first, then US/EU next days
- **No Friday deployments** (except blockers)

---

## 📊 QA Analysis Framework

### Key QA Metrics
1. **Volume Analysis**: PEDS tested and released in given duration
2. **Area Analysis**: Major issue areas from ticket content
3. **Trend Analysis**: Why PEDS numbers increased/decreased
4. **SLA Performance**: QA-side SLA misses vs Dev-side misses
5. **Delivery Time Analysis**: Reasons for delays in QA IN PROGRESS phase
6. **Automation Gap Analysis**: Identify automation candidates from PEDS issues

### Analysis Scope
- **Include**: Tickets with QA Owner assigned and QA intervention
- **Exclude**: 
  - Closed without QA intervention
  - Resolution: "Not a bug", "Duplicate", "Data correction done"
  - Configuration issues (DevOps/Dev only)
  - Incidents with proper resolution explanation
- **Geographic Distribution**: Not required for PEDS analysis

### Automation Analysis
- **Pre-release automation exists** but PEDS issues indicate potential automation gaps
- **Identify automation candidates**: Issues that could be automated but currently aren't covered
- **Focus areas**: Recurring patterns in PEDS that suggest automation opportunities

### Root Cause Investigation
When analyzing delays in QA IN PROGRESS:
- Review comments after QA IP status
- Check bugs logged during QA phase  
- Analyze QA ↔ Dev iterations
- Identify blocking factors

---

## 📈 Reporting Requirements

### Current Analysis Types
- Volume trends by time period
- Issue area distribution
- SLA performance metrics
- Delay root cause analysis
- Automation gap identification

### Future Requirements
- **Trend Reports**: Data points with highlights and lowlights
- **Predictive Analysis**: Pattern identification for proactive measures
- **Automation Recommendations**: Suggest test cases for automation based on PEDS patterns

---

## 🔍 Query Patterns for Analysis

### Common JQL Patterns
```jql
# QA-relevant PEDS
project = PEDS AND issuetype = Bug AND "QA Owner" IS NOT EMPTY

# SLA Analysis using Severity (NOT Priority)
project = PEDS AND issuetype = Bug AND severity = Blocker
project = PEDS AND issuetype = Bug AND severity = Critical

# Priority Issues
project = PEDS AND labels IN (T50, T100, onboarding)

# Recent Release Impact
project = PEDS AND labels = Release_issue

# Dev vs QA SLA Performance
project = PEDS AND labels IN (Dev_SLA_Missed, SLA_Missed)

# Automation Candidates (excluding config/incident/data issues)
project = PEDS AND issuetype = Bug AND labels NOT IN (Configuration_issue, incident, data_discrepancy)

# Timeline Analysis by Severity
project = PEDS AND issuetype = Bug AND severity IN (Blocker, Critical, Major) AND created >= "2024-01-01"
```

---

## 📎 Attachments & Documentation

### Typical Attachments
- Client/SRE issue proofs
- Dev reproduction evidence
- QA retest results and proofs
- Test cases and test matrix documents
- Bug screenshots
- Approval documents (ARB, Code Review, QRB, Audit)

### Comments Usage
- Progress updates from each team
- Automation logs
- Review approvals
- Status change justifications

---

## 🔧 Key Analysis Guidelines

### Timeline Calculations
- **ALWAYS use Severity field** for timeline-related analysis
- Severity determines SLA requirements and delivery commitments
- Priority field is for business prioritization but not timeline calculations

### Date Field Usage
- **Created Date**: Original issue creation date
- **Updated Time**: Latest activity timestamp (regardless of status)
- Use appropriate date fields based on analysis requirements

### Automation Focus
- PEDS represent gaps in current automation coverage
- Identify patterns that could strengthen pre-release testing
- Suggest automation candidates based on recurring issue types

---

## Field Mappings - UPDATED FROM ACTUAL PEDS DATA

### **Critical Custom Fields (Exact Names & IDs)**
- **PEDS Severity**: `customfield_10915` - Values: Blocker, Critical, Major, Minor
- **QA Owner**: `customfield_10924` - (Empty in current tickets, but field exists)
- **Due Date**: `customfield_10920` - Format: YYYY-MM-DD
- **Component**: `customfield_10889` - Values: NetcoreAPI, etc.
- **Client Due Date**: `customfield_11671` - Format: YYYY-MM-DD
- **Dev Due Date**: `customfield_10894` - Format: YYYY-MM-DD

### **Standard Fields (Correct Usage)**
- **Priority**: `priority` - Values: P0, P1, P2, P3
- **Labels**: `labels` - Array: Freshdesk_ticket_linked, Stability-Issues, T50, T100, etc.
- **Status**: `status` - Values: Open, In Progress, Closed, etc.
- **Components**: `components` - (Usually empty in PEDS)

### **Correct JQL Syntax Examples**
```jql
# CORRECT: PEDS Severity using custom field ID
customfield_10915 = "Critical"

# CORRECT: QA Owner check
customfield_10924 IS NOT EMPTY

# CORRECT: Priority
priority = "P1"

# CORRECT: Labels
labels IN ("Freshdesk_ticket_linked", "Stability-Issues")

# CORRECT: Status
status = "Open"
```

### **Key Insights from Real Data:**
1. **Severity Field**: Uses `customfield_10915` with values like "Critical"
2. **Most tickets have P1 priority** in current sample
3. **Labels are crucial**: "Freshdesk_ticket_linked", "Stability-Issues" are common
4. **QA Owner field exists** but was empty in sample tickets
5. **Due dates are tracked** in multiple custom fields

## Organization Overview
Netcore operates two main product streams with distinct Jira project structures:

### **CPAAS Stream Projects**
- **MOB** - Mobile Push Services
- **WAPP** - WhatsApp Business API
- **PEPI** - Push Engine Platform Infrastructure  
- **RCS** - Rich Communication Services
- **CPEDS** - CPAAS Production Escaped Defects

### **CE Stream Projects**
- **SMT** - Smartech Platform
- **CEPI** - CE Platform Infrastructure
- **PEDS** - Production Escaped Defects Smartech (Main customer defect tracking)

## PEDS Project Structure
**Primary Focus**: Customer-reported defects in Smartech platform requiring QA validation and resolution.

### **Ticket Workflow & Statuses**
- **Open** → **In Progress** → **QA** → **Closed**
- **Additional**: Draft, Prepared, Suspended for specific scenarios
- **Resolution Types**: Fixed, Won't Fix, Not a Bug, Duplicate, Data Correction Done

### **Priority & Severity Framework**
**Priority Levels**: P0 (Same Day) → P1 (2-3 Days) → P2 (1 Week) → P3 (2 Weeks)
**Severity Levels**: Blocker → Critical → Major → Minor

**Priority Labels**:
- **T50/T100**: Top priority clients requiring immediate attention
- **onboarding**: New client onboarding issues (high priority)
- **Release_issue**: Post-deployment defects indicating QA gaps

### **Key Stakeholders & Roles**
**QA Team**: Primary ticket handlers for validation and resolution
- **QA Owner Field**: Tracks individual QA engineer responsibility
- **QA Performance Metrics**: Resolution time, accuracy, customer satisfaction

**Development Team**: Secondary assignees for complex technical issues
**SRE Team**: Infrastructure and stability-related issues
**Client Success**: Customer communication and escalation management

### **Analysis Guidelines**

#### **Volume Analysis (Executive Level)**
- **Purpose**: Show true customer defect trends for business decision-making
- **Filtering**: Minimal - exclude only "Not a Bug", "Duplicate", "Data Correction Done"
- **Query**: `project = PEDS AND issuetype = Bug`
- **Focus**: Overall customer impact and business trends

#### **QA Performance Analysis (Operational Level)**  
- **Purpose**: QA team performance and actionable insights
- **Filtering**: Full - include QA Owner, exclude non-actionable items
- **Query**: `project = PEDS AND issuetype = Bug AND customfield_10924 IS NOT EMPTY`
- **Focus**: Team efficiency, process improvements, automation gaps

#### **Severity-Based Analysis**
- **Critical Issues**: `customfield_10915 IN ("Blocker", "Critical")`
- **SLA Tracking**: P0 (same day), P1 (2-3 days), P2 (1 week)
- **Client Priority**: `labels IN ("T50", "T100", "onboarding")`

#### **Component Analysis**
- **Infrastructure**: Labels containing "Stability-Issues"
- **Customer-Facing**: Labels containing "Freshdesk_ticket_linked"
- **Release Quality**: Labels containing "Release_issue"

### **Automation Gap Identification**
**Recurring Patterns**: Look for similar issue descriptions, components, or client patterns
**Test Coverage Gaps**: Issues labeled "Release_issue" indicate missing automation
**Performance Issues**: Infrastructure and API-related recurring defects

### **Reporting Standards**
- **Executive Summary**: BLUF format with key metrics and trends
- **Data Visualization**: Tables, percentages, trend comparisons
- **Actionable Insights**: Specific recommendations with business impact
- **Professional Formatting**: Emojis, clear headers, bullet points

## 🔗 Related Documentation
- [PEDS Analysis Patterns](../../analysis-patterns/)
- [Component Impact Matrix](../../defect-knowledge/component-impact-matrix.md)
- [Common Fixes Database](../../defect-knowledge/common-fixes-database.md)
- **[Smartech QA Debugging Handbook](../../debugging-guides/smartech-qa-debugging-handbook.md)** - Component-specific debugging procedures

---

*This guide applies to both PEDS (CE) and CPEDS (CPAAS) projects with their respective associated development projects.* 