# Test Automation Cases Reference

## Overview
This document provides a comprehensive reference of all automated test cases in the RF UI Automation project. Each test case includes a brief description of its functionality and coverage area.

---

## 📧 Email Campaign Automation (UI-Email2)

### Regular Email Campaigns
- **Email2-Regular-WOutTag-WOutCg-WOutGATrack-List-WOutExclude-WOutDomain-ExistingTemplate-WOutFreqcap-SendNOw-WoutContactLimit**: Basic regular email campaign creation and sending with existing template, list audience, no frequency capping or contact limits
- **Email2-Regular-WOutTag-Cg-WOutGATrack-List-WOutExclude-WOutDomain-ExistingTemplate-WOutFreqcap-SendNOw-WoutContactLimit**: Regular email campaign with conversion goal tracking enabled
- **Email2-Regular-WOutTag-WOutCg-GATrack-List-WOutExclude-WOutDomain-ExistingTemplate-WOutFreqcap-SendNow-WOutContactLimit**: Regular email with Google Analytics tracking integration
- **Email2-Regular-WOutTag-WOutCg-WOutGATrack-UDT-WOutExclude-WOutDomain-ExistingTemplate-WOutFreqcap-SendNowr-WoutContactLimit**: Regular email targeting User Defined Table (UDT) audience
- **Email2-Regular-WOutTag-WOutCg-WOutGATrack-List-WOutExclude-WOutDomain-ExistingTemplate-Freqcap-SendNOw-WoutContactLimit**: Regular email with frequency capping enabled to control message frequency
- **Email2-Regular-WOutTag-WOutCg-WOutGATrack-List-WOutExclude-WOutDomain-ExistingTemplate-WOutFreqcap-SendLater-WoutContactLimit**: Regular email scheduled for later delivery
- **Email2-Regular-WOutTag-WOutCg-WOutGATrack-List-WOutExclude-WOutDomain-ExistingTemplate-WOutFreqcap-SendNOw-ContactLimit**: Regular email with contact limit restrictions

### AB Testing Email Campaigns
- **Email2-AB-WOutTag-WOutCg-GATrack-List-WOutExclude-WoutDomain-ExistingTemplate-WiningCriteria-Open-WOutFreqcap-SendNOw-WoutContactLimit-ReportVerification**: A/B test campaign with open rate as winning criteria and report verification
- **Email2-AB-WOutTag-WOutCg-WOutGATrack-List-WOutExclude-WoutDomain-ExistingTemplate-WinningCrieteria-Open-User-Distrubution-WOutFreqcap-SendNow-WoutContactLimit**: A/B test with custom user distribution settings
- **Email2-AB-WOutTag-WOutCg-WOutGATrack-List-WOutExclude-WOutDomain-ExsistingTemplate-Five-Variant-WinningCriteria-Open-WOutFreqcap-SendNOw-WoutContactLimit**: A/B test with five variants to test multiple email versions
- **Email2-AB-WOutTag-WOutCg-WOutGATrack-List-WOutExclude-WOutDomain-ExsistingTemplate-WinningCriteria-Click-WOutFreqcap-SendNOw-WoutContactLimit**: A/B test with click rate as winning criteria

### Split Email Campaigns
- **Email2-Split-WOutTag-WOutCg-WOutGATrack-List-WOutExclude-WoutDomain-ReachableCount-CreateNewTemplate-WOutFreqcap-SendNOw-WoutContactLimit**: Split campaign with new template creation and reachable count verification
- **Email2-Split-WOutTag-WOutCg-WOutGATrack-List-WOutExclude-WOutDomain-ExistingTemplate-Five-Variant-WOutFreqcap-SendNow-WoutContactLimit**: Split campaign testing five different variants
- **Email2-Split-WOutTag-WOutCg-WOutGATrack-MultipleList-Seg-ExcludeList-WoutDomain-ExistingTemplate-WOutFreqcap-SendNOw-WoutContactLimit**: Split campaign targeting multiple lists and segments with exclusions

### Email Template & Content Management
- **Email2-Regular-WOutTag-WOutCg-WOutGATrack-List-WOutExclude-WOutDomain-CreateTemplate-Drag-And-Drop-Multilanguage-Temp-WOutFreqcap-SendNOw-WoutContactLimit**: Template creation using drag-and-drop editor with multi-language support
- **Email2-Regular-WOutTag-WOutCg-WOutGATrack-List-WOutExclude-WOutDomain-CreateTemplate-Html-Multilanguage-Temp-With-Max-Character-Preheader-WOutFreqcap-SendNOw-WoutContactLimit**: HTML template creation with multi-language and preheader optimization
- **Email2-Regular-WOutTag-WOutCg-WOutGATrack-List-WOutExclude-WOutDomain-CreateTemplate-FetchUrl-WOutFreqcap-SendNOw-WoutContactLimit**: Template creation by fetching content from URL

### Email Testing & Validation
- **Email2-Regular-Send-Test-Mail-Test**: Basic test email sending functionality
- **Email2-Regular-Send-Multiple-Test-Mail-Test**: Multiple test email sending to verify delivery
- **Email2-Regular-Send-Test-Mail-Test-Use-preset-test-email-addresses**: Test email using predefined test email addresses
- **Email2-Regular-WOutTag-WOutCg-WOutGATrack-List-WOutExclude-WOutDomain-ExistingTemplate-SpamScore-WOutFreqcap-SendNOw-WoutContactLimit**: Email spam score validation before sending

### Email Reporting & Analytics
- **Email2-Regular-Single-Summary-Report-Download**: Individual email campaign summary report download
- **Email2-Multiple-SummaryReport-Download**: Bulk summary report download for multiple campaigns
- **Email2-Regular-Detailed-Report-Download**: Detailed email campaign analytics report download
- **Email2-Multiple-DetailedReport-Download**: Multiple detailed reports download functionality

---

## 📱 Push Notification Automation (UI-APN2)

### Basic Push Campaigns
- **APN2-Regular-Campaign-Creation-With-Udt-And-Personalised-Subtitle-RichMedia-ImgURl-And-Custom-sound**: Regular push campaign with UDT audience, personalized content, rich media image, and custom sound
- **APN2-Regular-Campaign-with-Edge-To-Edge-Template-Personalised-Title-and-Description-RichMedia-ImageUpload-And-Default-Sound-With-Collapse_Key**: Edge-to-edge template push with personalization and collapse key functionality
- **APN2-Regular-Campaign-with-List-Rich-Media-Carousel**: Push notification with rich media carousel template for multiple content items

### Push Template Variations
- **APN2-Small-Image-Template_Wil_url_And_Left_alignment**: Small image template with URL and left alignment configuration
- **APN2-Timer-Template**: Push notification with countdown timer functionality
- **APN2-Progress-Bar-Template**: Interactive push notification with progress bar element
- **APN2-Rating-Template-With-Icon-Image-Rating-Option**: Rating-based push notification with icon and image rating options
- **APN2-Overlay-On-Image-Template-With-URL-And-Gradient-BG-Colour**: Image overlay template with gradient background and URL integration

### Advanced Push Features
- **APN2-Rich-media-Maximum-Action-button-Personalised-Url**: Rich media push with maximum action buttons and personalized URLs
- **APN2-Automatic-Carousel-Template-With-Url-And-Overlay-Colour**: Auto-generated carousel template with URL and overlay customization
- **APN2-Manual-Carousel-Template**: Manually configured carousel template for custom content arrangement
- **APN2-Personalised-Input-Field-Carousel**: Interactive push with personalized input fields in carousel format

### Push A/B Testing
- **APN2-AB-Personalised-Subtitle-with-Audio-Url-Clone-Variant**: A/B test push with personalized subtitle, audio URL, and variant cloning
- **APN2-AB-with-Carousel**: A/B testing for carousel-style push notifications
- **APN2-AB-Campaign-With-Richmedia-Gif-Url**: A/B test comparing different GIF rich media content

### Push Split Testing
- **APN2-Split-Broadcast-Publish-Copy-Edit-Again-Publish-And-Verify**: Split campaign workflow with publish, copy, edit, and republish verification
- **APN2-Split-Audio**: Split testing for audio-enabled push notifications
- **APN2-Split-Carousel**: Split testing for carousel template variations
- **APN2-Split-GIF**: Split testing for GIF-based rich media push notifications

---

## 💬 SMS Campaign Automation (UI-SMS2)

### Basic SMS Campaigns
- **SMS2-Tag-WOutCG-WOutDedup-List-Seg-ExcludeSeg-ExistingTemplate-WOutFreqcapping-SendNow-WOutSetlimit**: SMS campaign with tags, list and segment targeting, exclusions, no frequency capping or send limits
- **SMS2-Tag-WOutCG-WOutDedup-UDT-WOutExclude-ExistingTemplate-WOutFreqcapping-SendNow-WOutSetlimit**: SMS targeting User Defined Table audience without deduplication
- **SMS2-Tag-WOutCG-WOutDedup-List-WOutExclude-CreateTemplate-WOutFreqcapping-SendNow-Setlimit**: SMS with new template creation and send limit configuration

### SMS Advanced Features
- **SMS2-Tag-WOutCG-WOutDedup-List-WOutExclude-ExistingTemplate-Freqcapping-SendNow-WOutSetlimit**: SMS campaign with frequency capping to control message frequency
- **SMS2-Tag-CG-WOutDedup-List-WOutExclude-ExistingTemplate-WOutFreqcapping-SendNow-WOutSetlimit**: SMS with conversion goal tracking enabled
- **SMS2-Tag-WOutCG-WOutDedup-RFMSeg-WOutExclude-ExistingTemplate-WOutFreqcapping-SendNow-WOutSetlimit**: SMS targeting RFM (Recency, Frequency, Monetary) segmented audience

### SMS Testing
- **SMS2-Create-Campaign-And-Send-Test-Notification-On-Content-Page**: SMS campaign creation with test notification verification on content page

---

## 🔄 Journey Automation (UI-Journey2)

### Trigger-Based Journeys
- **Create-Journey-Email-Trigger-With-Tags**: Email-triggered journey automation with tag-based personalization and workflow
- **Create-Journey-Event-Payload-Personalization**: Journey triggered by custom events with payload-based personalization across touchpoints
- **Create-Journey-Shopify-Coupns-Email-Trigger**: Shopify integration journey with automated coupon delivery via email triggers
- **Create-Journey-Shopify-Coupns-SMS-Trigger**: E-commerce journey with coupon distribution through SMS channel integration

### Multi-Channel Journey Testing
- **Create-Journey-Static-Wait-For-Whatsapp-and-RCS-Channel**: Journey workflow with static wait periods for WhatsApp and RCS message delivery
- **Create-Journey-Reachable-Channel-On-Trigger-Activity**: Journey testing reachable channel selection based on user activity triggers
- **Create-Journey-Personalize-Latest-Activity-For-All-Channels**: Cross-channel personalization using latest user activity data

### Journey Frequency & Timing
- **Create-Journey-Frequency-Capping-First-Time-Happens**: Journey with frequency capping for first-time user events to prevent over-messaging
- **Create-Journey-Specific-Duration-in-Frequency-Capping**: Journey with custom duration-based frequency capping controls

### Journey Node Testing
- **Trigger-Node-Email-Click-Email-Verification-With-Conversion**: Email click trigger node testing with conversion tracking verification
- **Trigger-Node-Sms-Click-CheckAttribute-UpdateAttribute**: SMS click trigger with attribute checking and updating workflow
- **Trigger-Node-WebMessage-Email-Verification**: WebMessage to email journey node verification and flow testing

### Channel-Specific Journey Tests
- **Trigger-Email-freqCapp**: Email channel journey testing with frequency capping validation
- **Trigger-Sms-freqCapp**: SMS channel journey with frequency capping controls
- **Trigger-Whatsapp-Verification-With-frequencyCapp**: WhatsApp journey integration with frequency capping verification
- **Trigger-Apn-freqCapp**: Push notification journey with frequency capping controls

---

## 📱 InApp Message Automation (UI-InAppMessage2)

### InApp Campaign Types
- **Inapp-Camp-With-List-And-Cover-IMG-Url**: InApp campaign with list targeting and cover image from URL
- **Inapp-Camp-iOS-Interstitial-publish**: iOS-specific interstitial InApp message campaign testing
- **Inapp-Camp-with-list-and-half-interstitial**: Half-screen interstitial InApp message with list audience targeting
- **Inapp-Camp-Sticky-Header**: Sticky header style InApp message campaign

### InApp Template Variations
- **Inapp-Creation-With-SH-Timer-Template-Use-Camp-End-Date-Time**: Sticky header InApp with countdown timer using campaign end date
- **Inapp-Creation-With-Custom-With-Html-URL**: Custom InApp message created using HTML content from URL
- **Inapp-Creation-With-Custom-With-Html-Upload**: Custom InApp message with uploaded HTML content

### InApp Activity-Based Campaigns
- **Inapp-Camp-Activity-With-Trigger-Payload-And-SF-Manual-BG-Image-Url**: Activity-triggered InApp with slide-from template, manual configuration, and background image
- **Inapp-Camp-Activity-With-UserActivity-Yes-5Payload-And-HI-IMG-Url**: User activity-based InApp with five payload conditions and half-interstitial image
- **Inapp-Camp-Activity-With-Trigger-Payload-As-User-Entered-Geofence-And-Interstitial-Manual**: Geofence entry-triggered InApp with manual interstitial configuration

### InApp Conversion Goals
- **Inapp-Camp-ConversionGoal-With-CG-Camp-Single-Activity-Cover-Manual-Two-CTA-Option-Bg-Colour**: InApp with conversion goal tracking, cover template, and dual CTA options
- **Inapp-Camp-ConversionGoal-With-5-Payload-Single-Activity-Interstitial-IMG-Whatsapp-Option**: Multi-payload InApp with WhatsApp integration and conversion tracking

---

## 🌐 WebMessage Automation (UI-WebMessage2.0)

### WebMessage Template Types
- **WebMsg2-Banner-Text-Personalization**: Banner-style web message with personalized text content
- **WebMsg2-Campaign-With-Multilingualtext-Fullscreen-Temp-Publish-Verify**: Full-screen web message with multi-language text support
- **WebMessage2-ModalTemp-Cta-Button-Exit-And-Close-Verfication-For-DoubleClone-Camp**: Modal template web message with CTA button and exit/close verification
- **WebMsg2-StickyBar-CustomHtml-Temp**: Sticky bar web message using custom HTML template

### WebMessage User Targeting
- **Webmsg2-Set-UserType-Anonymous-And-New-Save-Draft-Schedulepage-Verify-UserType-Field**: Web message targeting anonymous and new users with user type verification
- **Webmsg2-Set-UserType-Identified-And-All-Publish-Pause-Clone-Edit-Verify-UserType-Field**: Identified user targeting with campaign lifecycle testing
- **WebMsg2-For-when-To-Target**: Web message timing and targeting condition configuration

### WebMessage Behavioral Triggers
- **WebMsg2-Campaign-With-Scroll-100-And-Add-Multiple-UserAction-Publish-Verify**: Web message triggered by 100% page scroll with multiple user actions
- **WebMsg2-Banner-Campaign-UserAction-Exit-intent-Mobile**: Mobile exit-intent triggered banner web message campaign
- **WebMsg2-Banner-Campaign-UserAction-TimeSpentOnPage-Publish-Verify**: Time-spent-on-page triggered banner web message

### WebMessage Location Targeting
- **WebMsg2-Location-EqualTo-Operator**: Location-based web message using equal-to geographical targeting
- **WebMsg2-Location-Not-EqualTo-Operator**: Location-based web message with not-equal-to geographical exclusion
- **WebMsg2-Banner-Campaign-Userlocation-SpecificUrl-Contains-Operator-Publish-Verify**: URL-based targeting using contains operator

---

## 👥 Audience Management (Audience2)

### List Management
- **Single-List-Bulkupload-with-Latin-encoding-file**: Bulk upload functionality for single list with Latin character encoding support
- **Single-contact-add-onlist-edit-delist-verify**: Individual contact management including add, edit, and delist operations
- **Multiple-List-Bulkupload-with-Latin-encoding-file**: Bulk upload for multiple lists with Latin encoding verification

### Audience Analytics
- **Export-audience-CSV**: Audience data export functionality in CSV format for external analysis
- **Verify-Audience-Timeline-for-Campaign-id**: Audience timeline tracking and verification for specific campaign IDs
- **Filter-Test-cases**: Audience filtering functionality testing with various filter criteria

### Contact Attribute Management
- **List-Bulkupload-with-Firstname-Attribute-Verify-Edit-Than-Upload-File-With-AtText-Attribute-Verify-Both-Attribute-Presence**: Multi-attribute upload testing with firstname and custom attributes verification
- **Attributes-TC**: Comprehensive attribute management testing including creation, modification, and validation
- **Blacklist-contacts**: Contact blacklisting functionality for opt-out and compliance management

---

## 🎯 Segmentation (Segment2)

### Behavioral Segmentation
- **Segment2-Behaviour-With-System-Activity-With-SpecifyParameter-As-Platform**: Platform-based behavioral segmentation using system activity data
- **Segment2-Behaviour-With-Custom-Activity-With-SpecifyParameter-Custom-Parameter**: Custom activity-based segmentation with user-defined parameters
- **Segment2-Behaviour-With-System-Activity-With-No-Of-Visit-Condition-Any-Day**: Visit frequency-based segmentation for any day condition

### Channel Activity Segmentation
- **Segment2-Email-Sent-And-Push-Notification-Activity-With-And-OR-Condition**: Cross-channel segmentation combining email and push notification activities
- **Segment2-SMS-Sent-And-Behaviour-Activity-With-And-OR-Condition**: SMS and behavioral activity combination segmentation
- **Segment2-Web-Push-Delivered-And-Behaviour-Activity-With-And-OR-Condition**: Web push delivery and behavior-based segmentation

### Predictive Segmentation
- **Segment2-Predective-Brand-Affinity-With-All-Condition**: AI-driven brand affinity segmentation using predictive analytics
- **Segment2-Predective-Category-Affinity-With-All-Condition**: Product category affinity prediction-based segmentation
- **Segment2-Predicted-CLTV-With-All-Condition**: Customer Lifetime Value prediction-based audience segmentation

### Attribute-Based Segmentation
- **Segment2-Attribute-With-ATINT-Att-With-All-Operators**: Integer attribute-based segmentation testing all mathematical operators
- **Segment2-Attribute-With-ATFLOAT-Att-With-All-Operators**: Float attribute-based segmentation with decimal value conditions
- **Segment2-Reachable-Channel-Email-Sms-Apn**: Multi-channel reachability-based segmentation

---

## 📊 Dashboard & Analytics (UI-Dashboards)

### Dashboard Views
- **UI-Home-Dashboard-Page**: Main dashboard functionality and data visualization testing
- **UI-Behaviour-Dashboard-Page**: User behavior analytics dashboard with engagement metrics and user journey insights
- **UI-Engagement-Dashboard-Page**: Engagement metrics dashboard showing campaign performance and user interaction data
- **UI-Revenue-Dashboard-Page**: Revenue analytics dashboard with ROI tracking and financial performance metrics

---

## 🔌 API Testing (API-v1v2v3v5)

### Data Export APIs
- **verify-and-update-list**: List verification and update API functionality testing
- **v2-Add-Attribute-In-Cce-Panel-Uisng-Add-Attribute-Apiv2**: Attribute addition API testing in CCE panel
- **v2-Create-Udt-Using-Create-Udt-Api**: User Defined Table creation via API

### Integration APIs
- **v3-Zapier-Authentication**: Zapier integration authentication API testing
- **v3-Zapier-Subscription**: Zapier webhook subscription management API
- **v3-Get-Form-Id-And-Template-Id**: Form and template ID retrieval API functionality

### Validation APIs
- **v3-Ipvalidation-Api**: IP address validation API for security and compliance
- **v3-Unsubscribe-api**: Unsubscribe management API for opt-out handling
- **Geofence-Verification**: Geolocation and geofence validation API testing

---

## 📈 Reporting & Downloads (UI-Download-Reports)

### Report Generation
- Various automated report download testing for campaign performance, audience analytics, and engagement metrics
- Bulk report download functionality validation
- Scheduled report generation and delivery testing

---

## 🔧 Utility & Support Features

### Login & Authentication
- **Login-Suite**: Comprehensive login functionality testing including authentication, session management, and security validation

### Navigation & UI
- **Navigation-Menu**: Main navigation menu functionality and user interface testing
- **UI-Element-Verification**: Core UI element validation and interaction testing

### Template Management
- **SMS-Template-Datadriven**: Data-driven SMS template testing with dynamic content
- **Email2-AMP-Template-Datadriven**: AMP email template testing with interactive elements
- **APN2-Template-Datadriven**: Push notification template testing with various configurations

---

## 🏷️ Test Categories & Tags

### Test Types
- **UI Tests**: User interface and frontend functionality testing
- **API Tests**: Backend API functionality and integration testing
- **Data-Driven Tests**: Template-based testing with multiple data sets
- **End-to-End Tests**: Complete workflow testing across multiple components

### Channel Coverage
- Email Marketing (Email2)
- SMS Campaigns (SMS2) 
- Push Notifications (APN2)
- InApp Messaging (InApp2)
- Web Messages (WebMessage2)
- WhatsApp Business
- RCS Messaging
- Journey Automation

### Feature Areas
- Campaign Creation & Management
- Template Design & Customization
- Audience Targeting & Segmentation
- Personalization & Dynamic Content
- A/B Testing & Split Testing
- Analytics & Reporting
- Integration & API Testing
- Compliance & Deliverability

---

## 📝 Notes

- All test cases follow Robot Framework POM (Page Object Model) structure
- Tests include comprehensive validation of UI elements, API responses, and data integrity
- Cross-browser and cross-device testing coverage included where applicable
- Integration testing covers major third-party platforms (Shopify, Zapier, etc.)
- Comprehensive reporting and analytics validation across all channels
- Security and compliance testing embedded throughout test suites

---

*Last Updated: [Current Date]*  
*Total Test Cases: 500+ across all modules*  
*Framework: Robot Framework with Selenium*  
*Coverage: UI, API, Integration, E2E Testing* 