# Confluence MCP Testing Guide 🧪

> **Purpose**: Quick validation steps to test Confluence MCP integration functionality
> 
> **Prerequisites**: Claude Desktop restarted with updated configuration

## 🚀 Quick Functionality Tests

### 1. Basic Connection Test
```
Test Confluence search functionality:
"Search for QA testing documentation in Confluence"
```
**Expected**: Should return search results from SE space or other accessible spaces

### 2. Specific Page Access Test  
```
Test direct page access:
"Get the content from Confluence page ID 3215425537"
```
**Expected**: Should retrieve the Smartech QA Debugging Handbook content

### 3. Space-Specific Search Test
```
Test space filtering:
"Search for debugging procedures in the SE space on Confluence"
```
**Expected**: Should return results specifically from SE space

### 4. Child Pages Test
```
Test child page retrieval:
"Get all child pages under the Smartech QA Debugging Handbook"
```
**Expected**: Should list all sub-sections/child pages of the handbook

## 📋 Comprehensive Test Scenarios

### Test 1: Search Functionality
**Queries to Test:**
- `"testing procedures"` (general search)
- `"space=SE AND type=page"` (CQL search)
- `"debugging handbook"` (specific content search)

**Success Criteria:**
- Returns relevant pages from Confluence
- Proper page metadata (title, URL, last modified)
- Content snippets or full content available

### Test 2: Page Content Retrieval
**Test Cases:**
- Main debugging handbook page (ID: 3215425537)
- Any child pages found under the handbook
- Convert to markdown vs. keep HTML format

**Success Criteria:**
- Full page content retrieved
- Proper formatting (markdown conversion working)
- Metadata includes creation/modification dates
- No authentication errors

### Test 3: Page Hierarchy Navigation
**Test Cases:**
- Get parent page information
- List all child pages with content
- Navigate through page relationships

**Success Criteria:**
- Proper parent-child relationships identified
- All child pages accessible
- Content structure preserved

## 🔧 Debugging Handbook Specific Tests

### Test 4: Handbook Content Structure
**Validation Points:**
- Main handbook page accessibility
- Component-specific debugging sections
- General procedures documentation
- Emergency response procedures

### Test 5: Content Mapping
**Test Component Sections:**
- Email Campaign Management
- SMS Campaign Management  
- API Integration Debugging
- Template Editor (UCE) Debugging
- Journey Builder Debugging
- Audience Segmentation
- Analytics & Reporting
- Authentication & Security

**Success Criteria:**
- Each section has detailed debugging steps
- Testing procedures clearly documented
- Troubleshooting guidelines available
- Contact information for escalation

## 🚨 Error Scenarios to Test

### Test 6: Permission Handling
**Test Cases:**
- Access restricted pages
- Search in inaccessible spaces
- Invalid page IDs

**Expected Behavior:**
- Graceful error handling
- Clear permission error messages
- No authentication credential exposure

### Test 7: Network Issues
**Test Cases:**
- Large page content retrieval
- Multiple simultaneous requests
- Timeout scenarios

**Expected Behavior:**
- Appropriate timeout handling
- Partial content recovery when possible
- Error logging without crashes

## 📊 Performance Tests

### Test 8: Response Times
**Benchmarks:**
- Search queries: < 5 seconds
- Page content retrieval: < 10 seconds
- Child page listing: < 15 seconds
- Large page content: < 30 seconds

### Test 9: Content Size Limits
**Test Cases:**
- Very large pages (>100KB content)
- Pages with many child pages (>50)
- Pages with complex formatting/tables

## ✅ Success Validation Checklist

### Basic Functionality ✅
- [ ] Confluence search returns results
- [ ] Page content retrieval works
- [ ] Authentication successful
- [ ] No MCP connection errors

### Debugging Handbook Specific ✅
- [ ] Main handbook page (3215425537) accessible
- [ ] Child pages can be retrieved
- [ ] Content format suitable for integration
- [ ] All component sections present

### Integration Ready ✅
- [ ] Content can be extracted for sync script
- [ ] Markdown conversion working properly
- [ ] Page metadata available for tracking
- [ ] No rate limiting issues

### Performance Acceptable ✅
- [ ] Response times within benchmarks
- [ ] Large content handling works
- [ ] Multiple requests don't cause issues
- [ ] Error handling is graceful

## 🔧 Troubleshooting Common Issues

### "Confluence client is not configured"
**Solution**: Restart Claude Desktop to reload MCP configuration
**Verification**: Check Docker containers are running

### Authentication Errors
**Solution**: Verify API token in .env file is correct
**Verification**: Test token with direct Confluence API call

### Timeout Issues
**Solution**: Check network connectivity and Confluence server status
**Verification**: Access Confluence directly in browser

### Content Format Issues
**Solution**: Test both markdown and HTML content retrieval
**Verification**: Compare content quality in both formats

## 🎯 Next Steps After Successful Testing

1. **Run Sync Script**: `python scripts/confluence-handbook-sync.py`
2. **Validate Content Population**: Check debugging handbook for actual content
3. **Test Component Mapping**: Verify sections align with PEDS components
4. **Integration Testing**: Test debugging guidance in sample PEDS analysis

---

**Testing Status**: 🟡 **Ready for Testing - Awaiting Claude Desktop Restart** 