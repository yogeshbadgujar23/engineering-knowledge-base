# Smartech QA Debugging Handbook 🔧

> **Source**: Confluence - [Smartech QA Debugging Handbook](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3215425537/Smartech+QA+Debugging+Handbook)
> 
> **Purpose**: Comprehensive debugging reference for QA team testing across all Netcore components
> 
> **Usage**: Referenced automatically in PEDS analysis for component-specific debugging guidance

## 📋 Overview

This handbook contains the complete debugging procedures extracted from Confluence, providing step-by-step guidance for QA engineers when investigating issues across all Smartech components.

## 🎯 Integration with PEDS Analysis

This handbook is automatically referenced during PEDS ticket analysis to provide:
- **Component-specific debugging steps** for issues
- **Testing procedures** for verification
- **Common troubleshooting patterns** for similar issues
- **Environment-specific considerations** for debugging

---

## 🔧 QA Tools & Environment Setup

### Must have tools for QA engineers

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3742367780)

**Name**

**Description**

**URL**

**Credentials**

Postman

API Testing

[https://www.postman.com/](https://www.postman.com/) 

Selectors Hub

xPath plugin to auto generate, write and verify xpath &amp; cssSelector.

[https://selectorshub.com/selectorshub/](https://selectorshub.com/selectorshub/) 

TestCase Studio

TestCase Studio record the user actions performed on a web application in English Sentences.

[https://chrome.google.com/webstore/detail/testcase-studio/loopjjegnlccnhgfehekecpanpmielcj](https://chrome.google.com/webstore/detail/testcase-studio/loopjjegnlccnhgfehekecpanpmielcj) 

Username/Email: ["your_email@example.com"](mailto:"your_email@example.com")Password: SwJqKR

Zephyr

Test Case management

[https://smartbear.com/test-management/zephyr/](https://smartbear.com/test-management/zephyr/) 

Exploratory Testing

Exploratory testing session using Chrome

[https://chrome.google.com/webstore/detail/khigmghadjljgjpamimgjjmpmlbgmekj](https://chrome.google.com/webstore/detail/khigmghadjljgjpamimgjjmpmlbgmekj) 

SingleFile

Save a complete page into a single HTML file

[https://chrome.google.com/webstore/detail/mpiodijhokgodhhofbcjdecpffjipkle](https://chrome.google.com/webstore/detail/mpiodijhokgodhhofbcjdecpffjipkle) 

URL Throttler

An extension that lets you delay the response from specific URLs

[https://chrome.google.com/webstore/detail/kpkeghonflnkockcnaegmphgdldfnden](https://chrome.google.com/webstore/detail/kpkeghonflnkockcnaegmphgdldfnden) 

Scribe: AI Documentation, SOPs &amp; Screenshots

Auto-generate step-by-step guides, just by clicking record

[https://chrome.google.com/webstore/detail/scribe-ai-documentation-s/okfkdaglfjjjfefdcppliegebpoegaii](https://chrome.google.com/webstore/detail/scribe-ai-documentation-s/okfkdaglfjjjfefdcppliegebpoegaii) 

Bird Eats Bug: Technical Screen Recording

Catch, report, and fix bugs faster.

[https://chrome.google.com/webstore/detail/bird-eats-bug-technical-s/mdplmiioglkpgkdblijgilgebpppgblm](https://chrome.google.com/webstore/detail/bird-eats-bug-technical-s/mdplmiioglkpgkdblijgilgebpppgblm) 

WebApp Form Filler

Automatically fills forms in your web applications. Especially handy for manual testing and development.

[https://chrome.google.com/webstore/detail/webapp-form-filler/nmkmpldhpejmploidnhchbohelkfnokk](https://chrome.google.com/webstore/detail/webapp-form-filler/nmkmpldhpejmploidnhchbohelkfnokk) 

JSON Formatter

Makes JSON easy to read

[https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa) 

Bug Magnet

Right-click context menu to help with exploratory testing

[https://chrome.google.com/webstore/detail/bug-magnet/efhedldbjahpgjcneebmbolkalbhckfi](https://chrome.google.com/webstore/detail/bug-magnet/efhedldbjahpgjcneebmbolkalbhckfi) 

Robot Framework

For Automation Testing of Browser, Mobile and API

[https://robotframework.org/](https://robotframework.org/) 

Selenium with selenoid

Selenium Hub to run browsers within containers

[https://aerokube.com/selenoid/latest/](https://aerokube.com/selenoid/latest/) 

Appium

Appum Hub to run Mobile tests

[https://appium.io/](https://appium.io/) 

Tabby

Tabby for SSH connections.

[https://tabby.sh/](https://tabby.sh/) 

Jenkins

For Feature branch deployment and running Automation cases

[https://www.jenkins.io/](https://www.jenkins.io/) 

Gitlab

Source Code Management

[https://gitlab.com/](https://gitlab.com/) 

JIRA

Ticket and Project Management

[https://www.atlassian.com/software/jira](https://www.atlassian.com/software/jira) 

Confluence

Internal Documentation

[https://www.atlassian.com/software/confluence](https://www.atlassian.com/software/confluence) 

Firebase Test Lab

Capture Analytics for Mobile App Crashing

[https://firebase.google.com/docs/test-lab](https://firebase.google.com/docs/test-lab) 

GTMetrix

Capture the performance of webpages

[https://gtmetrix.com/](https://gtmetrix.com/) 

PCloudy

Appum Hub to run Mobile tests on Cloud for Cross-Device Testing

[https://www.pcloudy.com/](https://www.pcloudy.com/) 

BrowserStack

For mnual testing on Cross-Browser platform 

[https://browserstack.com/](https://browserstack.com/) 

LambdaTesting

Appum Hub to run Mobile tests on Cloud for Cross-Device Testing

[https://www.lambdatest.com/](https://www.lambdatest.com/) 

BugBugIO

Record and Playback tool for browsers

[https://bugbug.io/](https://bugbug.io/)

username: ["your_email@example.com"](mailto:"your_email@example.com")password: Netcore@1234

HookDeck

Webhook Service

[https://dashboard.hookdeck.com/signin](https://dashboard.hookdeck.com/signin) 

username: ["your_email@example.com"](mailto:"your_email@example.com")password: Netcore@1234

---

### Debugging and Understanding Architecture

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3667492960)



---

### Information of Config Hub and Docker Container Applications

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3422060545)

**Environment**

**POD2**

**SIT**

**ProdUS**

**ProdIndia**

**ProdEU**

summarizer

192.168.54.19:9020

activity-papi

192.168.54.22:8090

gopi

192.168.54.22:9081

kafakamongowriter

192.168.54.19:8070

**Environment**

**POD2**

**SIT**

**ProdUS**

**ProdIndia**

**ProdEU**

ConfigHub URL

[http://192.168.54.27:8056/r/netcorecloud/](http://192.168.54.27:8056/r/netcorecloud/)

[http://192.168.54.27:8056/r/netcorecloud/](http://192.168.54.27:8056/r/netcorecloud/)

[http://confighub-prod.netcore.co.in:8056/r/netcorecloud/](http://confighub-prod.netcore.co.in:8056/r/netcorecloud/)

[http://confighub-prod.netcore.co.in:8056/r/netcorecloud/](http://confighub-prod.netcore.co.in:8056/r/netcorecloud/)

[http://confighub-prod.netcore.co.in:8056/r/netcorecloud/](http://confighub-prod.netcore.co.in:8056/r/netcorecloud/)

Username

smartechro

smartechro

smartechro

smartechro

smartechro

Password

smartechro@123

smartechro@123

smartechro@123

smartechro@123

smartechro@123

Jenkins url for docker pod2 deployment :[http://192.168.2.136:8080/view/confighub/job/app-image-builder-confighub/](http://192.168.2.136:8080/view/confighub/job/app-image-builder-confighub/)

How to check logs of application which has been dockerized ?--&gt; /var/log/apps/&lt;&lt;component-name&gt;&gt;

Configs files to be checked :/etc/&lt;&lt; property-file-name.env.branch &gt;&gt; file

Reference Jira task :SMT-24110f35b0ece-c90d-3aa4-bc31-5387dc866132System JIRA

---

## 🌐 Platform & POD Debugging

### Web POD Debugging Steps

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3215523857)

How to check Logs on Production for Lambda?- Details are available here &rarr; [https://docs.google.com/spreadsheets/d/1r7mflhituhjj3ADa2V8I9NErzkfeQEWxrYWhda3rlHM/edit#gid=1581230650](https://docs.google.com/spreadsheets/d/1r7mflhituhjj3ADa2V8I9NErzkfeQEWxrYWhda3rlHM/edit#gid=1581230650) 

Debug Smartech UI- Verify audit log on panel level

bashDebug MySQL database- Verify MySQL DB for asset creation on PAPI DB

- Verify MySQL DB for web message templates on PAPI DB

- Verifying web message summary in Panel DB

sqlDebug PAPI UI- How to find log path of PAPI on panel level for POD2

bash- How to check find log path of PAPI logs

bash- How to check PAPI logs on PreProd

bash**Environment**

POD1

POD2

PreProd

Prod-US

Prod-Ind

Prod-EU

- VAPID BPN Workflow for Journey (Need to prepare)

Mongo Query to check WebMessage details- For Detailed Report of individual user of WebMessage via MID, connect to Client Mongo DB and execute below query:

- for Identified User

- for Anon User

- For Summary Details of WebMessage via MID, connect to DMongo DB and execute below query:

Explanation of p1_web_map_v2- clientid

- appServer

- dbServer

- mongoCluster

- idc

- PanelStatus

- boxStatus

- sanBoxStatus

- freqCapStatus

- boxxTransformStatus

-  Stable/Latest version of JS SDK

- fastBusEnableFlag

- srcID

---

### App POD Debugging Steps

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3215556623)

Explanation of p1_app_map_v2- clientid,

- appServer,

- dbServer,

- mongoCluster,

- idc,

- appPanelStatus,

- sdkStatus,

- boxStatus,

- sanBoxStatus,

- freqCapStatus,

- appSourceId,

- osType,

- pushAmpStatus,

- pushAmpFreq,

- customIdentityField,

- pxFlag,

- FastBusEnable/Emergency

check and verify in vertica db user is present or not  select * from s_83151.userGuidTokenMapping where uid = 1274424;
 status |      eventtime      | b |    tz     |   uid   |  cid  | utype | srcid |  sv   | o |                                                                     token                                                                      | et |                 guid                 | d | gwsource |         tts         | is_stale 
--------+---------------------+---+-----------+---------+-------+-------+-------+-------+---+------------------------------------------------------------------------------------------------------------------------------------------------+----+--------------------------------------+---+----------+---------------------+----------
      1 | 2025-01-09 20:14:06 | 2 | GMT+05:30 | 1274424 | 83151 |     1 |  2823 | 3.5.7 | 6 | cxMXUsj0TvOhDiXsLAN3GK:APA91bENjwlTUry9sQ2LRZs0S8lHoIamuNGo23taGvRRafDjjO1ZPyj7vsLJecIVrF_DAVUV3LIs8prbxmT3EQYaOJWMv68k9M5kTM1d3NZAodpZ6PfN4cs | a  | 657a2c11-ca98-4389-9abb-eba06e6add6f | 2 |        1 | 2025-01-09 20:14:06 | f
(1 row)]]>

---

### Master and Feature Branches on POD2 with Multiple Instances of the Same Component

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3783787137)

How to add a new panel for diverting event traffic to feature branch?- Add your client in below variable in the ELRB properties -&gt; /opt/elredisbridge/deployer/config/elredisbridge.properties on 192.168.54.19

- Restart elredisbridge once the above changes are done

- In the below ELRB properties file, values of **dst.redishosts.distr.map** and **dst.redishosts** are having one-to-one mapping.

- So Events Data of clients belonging to **highpriority** will go to **redis://sitenv03.netcore.co.in:6379**

- Feature branch of EventLogger is configured to dequeue from redis://sitenv03.netcore.co.in:6379

- ArgoCD Logs

For feature branch &rarr; check the logs on **event-logger-feature-lowerenv-pod2**

- For master branch &rarr; check the logs on **event-logger-mg-lowerenv-all-pod2**

---

## 📧 Email Campaign Management

### Email Broadcast Debugging

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3423010822)

**Working of Email Processqueue :**  

**Test Email Broadcast Flow &rarr;** CEE Processqueue (Audit logs) &rarr; Mail Log &rarr; Delivery Server &rarr; Mail Servers (google, yahoo etc)

**Normal Email Broadcast Flow &rarr;** CEE Processqueue (Audit logs) &rarr; goPickup service &rarr; Mail Log &rarr; Delivery Server &rarr; Mail Servers (google, yahoo etc)

**RG Email Broadcast Flow &rarr;** CEE Processqueue (Audit logs) &rarr; RG Pickup service &rarr; Mail Log &rarr; Delivery Server &rarr; Mail Servers (google, yahoo etc)

Prerequisites- Must have correct domain (Ex : [http://m3m.in](http://m3m.in) ) added and enabled in the panel and selected while sending broadcast

- Non-RG Service check on APP Server

- RG Service check on RG Server (192.168.54.24)

Audit logAudit log path - ** 192.168.54.25- /net/tmp/audit_log/&lt;panel_name&gt;/audit_log.log**

Replace &lt;panel_name&gt; with actual name of the panel.

Pickup LogsPOD2 Normal Email Pickup log path - 192.168.54.25 - `tail -F /var/log/apps/pickupd/pickupd.log`

POD2 RG Email Pickup Log path - 192.168.54.24 - `tail -F /var/log/apps/rgpickup/rgpickup.log`

Preprod Normal Email Pickup Log Path - (APP Server) - `tail -F /var/log/apps/pickupd/pickupd.log`

Preprod RG Email Pickup Logs - [mongoquery5.netcore.co.in](http://mongoquery5.netcore.co.in).  &rarr; `tail -F /var/log/pickup.log`

Mail LogMail log path - App Server - /var/log/maillog

Final Log mentioned below suggests that email is sent to this user

250 2.6.0 message received|1|1681081256|sent]]>Fields mentioned in above output and their relevance - 

- C1D862EA887 -- queue id

- 2473 -- processed

- [campaign-pod2_apn_aakash-81891-191-821-sarvesh.netcore=gmail.com@mailmx1.reachmantra.com](mailto:campaign-pod2_apn_aakash-81891-191-821-sarvesh.netcore=gmail.com@mailmx1.reachmantra.com) -- return path

- 202.162.250.166 -- delivery server IP

Delivery Server Logs- Note Delivery Server IP from previous step. Check name of delivery server by using following URL - [http://202.162.250.166/monitor.txt](http://202.162.250.166/monitor.txt) (Replace IP with delivery server IP if required)

- Once the delivery server is confirmed, login to that server (In above case, it is pmta4.netcore.co.in)

- Note return path from previous step. Check final delivery logs by using this command - **grep &lt;return_path&gt; /var/log/pmta/acct-&lt;date&gt;-***

- Example (Note - **:d** mentioned inside output suggests that mail is delivered to google servers for the delivery)

,sarvesh.netcore@gmail.com,netcoresmartech.com (59.163.11.66),202.162.250.167,gmail-smtp-in.l.google.com (142.251.16.27),2658,gmail.com/internal-stage-mta,success,2.0.0 (success),smtp;250 2.0.0 OK 1681081256 o17-20020a05622a045100b003e28731cc8dsi6424995qtx.708 - gsmtp]]>
Related Tables MYSQL- email_template

- netcore_bounce_summary

- netcore_domain_master

- phplist_message

- custom_omg_1

- custom_umg_1

- phplist_linktrack

- phplist_linktrack_forward

- phplist_linktrack_ml

- phplist_linktrack_uml_click

- phplist_linktrack_userclick

- phplist_listmessage

Related Collections MongoDB- userDetails

- engagementDetails

- emailSummary

Related Tables VerticaDB- s_&lt;cid_last_digit&gt;.userDetails_e_bnc

- s_&lt;cid_last_digit&gt;.userDetails_e_o

- s_&lt;cid_last_digit&gt;.userDetails_e_sfd

- s_&lt;cid_last_digit&gt;.userDetails_e_u

- s_&lt;cid_last_digit&gt;.userDetails_e_c

- s_&lt;cid_last_digit&gt;.userDetails_e_s

- s_&lt;cid_last_digit&gt;.userDetails_e_spm

- s_&lt;clientid&gt;.userDetailsAttrs

Event Logger LogsUsername - smartechro

Password - smartechro@123

[https://argocd-pod2.netcorein.com/applications/event-logger-mg-lowerenv-all-pod2?resource=&amp;node=%2FPod%2Fpod2%2Fevent-logger-mg-lowerenv-all-pod2-79d584649-9dw52%2F0&amp;tab=logs](https://argocd-pod2.netcorein.com/applications/event-logger-mg-lowerenv-all-pod2?resource=&amp;node=%2FPod%2Fpod2%2Fevent-logger-mg-lowerenv-all-pod2-79d584649-9dw52%2F0&amp;tab=logs)

Summarizer LogsUsername - smartechro

Password - smartechro@123

[https://argocd-pod2.netcorein.com/applications/summarizer-pod2?resource=&amp;node=%2FPod%2Fpod2%2Fsummarizer-pod2-df8bfff5b-6c9wr%2F0&amp;tab=logs](https://argocd-pod2.netcorein.com/applications/summarizer-pod2?resource=&amp;node=%2FPod%2Fpod2%2Fsummarizer-pod2-df8bfff5b-6c9wr%2F0&amp;tab=logs)

KMW LogsPOD2 - 192.168.54.19 - /var/log/apps/kafkamongowriter/kafkamongowriter.log

Increase attribute limit for a panel- Add following in php file of client config in emm_ mvc_prod1

LTUT Logs- [https://docs.google.com/spreadsheets/d/1KFjESf7QBtd7cKb3MPiyCUjiCDAcCzmR-pTEm3KDrKs/edit?gid=634347005#gid=634347005](https://docs.google.com/spreadsheets/d/1KFjESf7QBtd7cKb3MPiyCUjiCDAcCzmR-pTEm3KDrKs/edit?gid=634347005#gid=634347005)

---

### Debugging Campaign API for Email

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3685417062)

- Enhancement Done in &rarr; SMT-14754f35b0ece-c90d-3aa4-bc31-5387dc866132System JIRA 

- This API is hosted by Smartech-UI. Code is stored at this location &rarr; [https://gitlab.com/netcorecloud/cee/smartech/-/blob/PEDS-6375/API/V2/application/controllers/email_broadcast.php](https://gitlab.com/netcorecloud/cee/smartech/-/blob/PEDS-6375/API/V2/application/controllers/email_broadcast.php)

- This API allows customer to Send EMAIL campaigns on a targeted Audience

- The API takes LIST ID in the Panel, An HTML file hosted on a publicly accessible HTTP Server and An Email ID which will be notified once the campaign is SENT

- For POD2 use [apppod2.netcoresmartech.com](http://apppod2.netcoresmartech.com/) instead of `pnstage.netcore.co.in` in below API call.

- API without POST Data

- Data for Using List ID, Template ID, Suppression List from panel

- **Using List ID, Suppression List from panel &amp; Hosted HTML template from API**

- **Using Upload CSV &amp; Hosted HTML template from API**

- **Using Template ID from panel, Upload CSV from API**

**Notes:**

- If there is any error while updating target or suppression list ID, campaign will be saved as a draft on the panel

- For future date = &quot;schedule_date&quot;: &quot;2020-11-12 12:11:11&quot;,

- &quot;schedule_date&quot;: &quot;now&quot; will only work with &quot;target_lists&quot;: &quot;151&quot;&nbsp;

- For scheduling a campaign using target list campaign will be delivered in intervals of 15 minutes

Eg.&nbsp;

- If campaign scheduled time time is set at 2020-11-12 12:15:00 then will be delivered at 2020-11-12 12:15:00

- If campaign scheduled time time is set at 2020-11-12 12:11:11 then will be delivered at 2020-11-12 12:15:00

- If scheduled at 2020-11-12 12:16:00 then will be delivered at 2020-11-12 12:30:00

- &quot;replyto&quot;: &quot;["your_email@example.com"](mailto:"your_email@example.com")&quot;, email id should be added as reply to the panel.

- &quot;replyto&quot;: &quot;["your_email@example.com"](mailto:"your_email@example.com")&quot;, can be removed if not required

- &quot;Suppression_list&quot;:&quot;153&quot;, needs to be removed from API if Suppression is not required

- **Upload and publish email campaign api (async)**

- This api will first upload the data and create the campaign. Later after upload done it will schedule the campaign. It accepts csv as an upload file and source file for template for email.

- **Enhancement IN API (SMT-14754)**

This api has started to support list target, suppression list and template id support.

- By this one can use api to publish campaigns on already created list and templates.

- This supports Schedule **NOW **feature as well

- Schedule now will start executing the campaign immediately. It works with list target option only.

- In this enhancement, the upload option will work with template id and list target will work with upload html file

- Explaination of Payload Parameters

Data Parameter

required

Usage

campaign_name

yes

To refer campaign name

subject_line

yes

Subject for email

sender_email_id

yes

Sender email address

sender_name

yes

Sender name for email

schedule_date

yes

Campaign schedule date

tags

optional

Tag to campaign

contacts_upload_source

To upload contact - Yes

Url of contact data in csv

list_name

Mandatory with upload contact

Use to create list name for contact upload

check_rowcount

Mandatory with upload contact

To skip md5 check

source_file

optional

Hosted html template url

source_code

optional

Html source code for template

target_lists

To use existing list - Yes

Comma separated multiple listids support

templateid

optional

Existing email template id

suppression_list

optional

To map suppression listWorks with list only

replyto

optional

Use to add replyto in campaign

notify_me

Yes

To get api status on email

---

### Debugging AMP for Email

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3695509642)

Password : !QAZxsw2#EDC- - 
**Environment**

**Component Name**

**Machine IP Address**

**Log Path**

POD2

AMP Submission Lambda

192.168.53.15

tail -f /var/log/apps/amp/amp/buffer*.log file

SIT

AMP Submission Lambda

ProdUS

AMP Submission Lambda

52.3.75.180

/var/log/apps/amp/amp/

ProdIndia

AMP Submission Lambda

ProdUS

AMP Submission Lambda

**Environment**

**Steps to perform adding amp domain if existing domain not displaying in amp domain dropdown**

**Steps to perform for adding New amp domain **

POD1

1&gt;Insert below records in  respective client MySQL db` insert into netcore_fromdomain (name,active) values('mailguard.co.in','1');`2&gt;Connect to AppServer and run below scripts (make sure panel name and codebase should be right)ssh 192.168.54.7`php /var/www/html/emm_mvc_prod1/process/migration_scripts/dns.php ia20 `

1&gt;Add New domain from cee panel (settings&gt;&gt;Email Domain&gt;add domain)2&gt;Connect MySQL db and update value for  `ampSender='' and amptype='1'` from `dns_configuration ` table for respective new amp domain**Note: ampSender should be present and amptype should be 1 for AMP domain**

POD2

1&gt;Insert below records in MySQL` insert into netcore_fromdomain (name,active) values('mailguard.co.in','1');`2&gt;Connect to AppServer and run below scripts (make sure panel name and codebase should be right)ssh 192.168.54.25`php /var/www/html/emm_mvc_prod1_mayurm/process/migration_scripts/dns.php pod2_mayur_qa `

PREPROD

1&gt;Insert below records in MySQL` insert into netcore_fromdomain (name,active) values('mailguard.co.in','1');`2&gt;Connect to AppServer and run below scripts (make sure panel name and codebase should be right)ssh prt from jumpcloud-us`php /var/www/html/emm_mvc_prod1_aj/process/migration_scripts/dns.php prapp1_auto_ia20`

IND

1&gt;Insert below records in MySQL` insert into netcore_fromdomain (name,active) values('mailguard.co.in','1');`2&gt;Connect to AppServer and run below scripts (make sure panel name and codebase should be right)`php /var/www/html/emm_mvc_prod1/process/migration_scripts/dns.php tprappin1test`

US

1&gt;Insert below records in MySQL` insert into netcore_fromdomain (name,active) values('mailguard.co.in','1');`2&gt;Connect to AppServer and run below scripts (make sure panel name and codebase should be right)`php /var/www/html/emm_mvc_prod1/process/migration_scripts/dns.php qa_manual1`

EU

1&gt;Insert below records in MySQL` insert into netcore_fromdomain (name,active) values('mailguard.co.in','1');`2&gt;Connect to AppServer and run below scripts (make sure panel name and codebase should be right)`php /var/www/html/emm_mvc_prod1/process/migration_scripts/dns.php euqa4`

---

### Debug SPAM and BOUNCE Email

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/4229562414)

How Bounce Email works?- Watch Video &rarr; [https://drive.google.com/file/d/1ltbWSFDvRz7dLiia3zhA2BA9_ecRXjOB/view?usp=sharing](https://drive.google.com/file/d/1ltbWSFDvRz7dLiia3zhA2BA9_ecRXjOB/view?usp=sharing) 

How Spam Reporting works?- Part1 &rarr; [https://drive.google.com/file/d/1MoM1ngGKanaOo_cFZPQORQ_8LVcGC8JE/view?usp=sharing](https://drive.google.com/file/d/1MoM1ngGKanaOo_cFZPQORQ_8LVcGC8JE/view?usp=sharing) 

- Part2 &rarr; [https://drive.google.com/file/d/1H2smPk0jxmB_hYNmq2z3gztLoxTGYxnC/view?usp=sharing](https://drive.google.com/file/d/1H2smPk0jxmB_hYNmq2z3gztLoxTGYxnC/view?usp=sharing) 

How to test Bounce and Spam on POD2?- sample RPUSH for Bounce Email from Production. Event Logger deques from PR1_FCUSB_LIST

- sample RPUSH for Spam Email from Production. Event Logger deques from PR1_FCUSB_LIST

- please note: PR1_FCUSB_LIST_COMB is split into PR1_FCUSB_LIST by ELRB

Server details for Spam processing on Production- **ssh **usfbl.netcore.co.in

- **Log Path** &rarr; grep -m 3  FCUSB  /var/log/apps/fblparser/fbl.log

---

### Journey Email Delivery Debugging

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3705667634)

Once we get the email Transaction ID for a journey email and it has not been delivered in our inbox. It can be checked with below steps 

netcoreinternaliacawSm@rt@50Scan below QR code for Google Auth

Once Logged in

Move to Email &gt;&gt; Live Feed

Apply the filter by X-API Headers and use the search string as the TR ID Copied in first step

In Process &gt;&gt; Email has been sent to DE by PepiPost

Delivered &gt;&gt; Email has been  delivered

If the email is in InProgress status for too long, there could be a queue pile up at Delivery end. Need to check with DE Team

---

## 📱 SMS & Messaging

### SMS Broadcast Debugging

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3423109123)

Prerequisites- Must have correct enterprise ID configured in the panel

- Must have valid PEID added to the panel

- Must have valid DLT ID added to the template according to content specified ([https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/2707095555/Creating+sms+template+and+whitelisting+from+backend+for+QA+panel)](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/2707095555/Creating+sms+template+and+whitelisting+from+backend+for+QA+panel)) 

- Valid Senderid and sender name should be selected while sending sms broadcast

Audit LogAudit log path : **/net/tmp/audit_log/&lt;panel_name&gt;/audit_log.log**

Location - App Server

Replace &lt;panel_name&gt; with actual name of the panel.

Related Tables MYSQL- papi_smsmessage

- papi_smstemplate

- papi_smstemplate_whitelist

- sm_broadcast_sent

- sm_click_1

- sm_click_default

- sm_click_map

- sm_click_master

- sm_delivery_1

- sm_late_pingback

- sm_sent_1

- sm_sent_map

- sm_statuscode_master

- sms_linktrack_ml

- sms_list_segment

- sms_summary

- sms_supressed_map

- sms_throttle

Related Collections MongoDB- userDetails

- engagementDetails

Related Tables VerticaDB- s_&lt;clientid&gt;.userDetailsAttrs

- s_&lt;cid_last_digit&gt;.userDetails_s_sc

- s_&lt;cid_last_digit&gt;.userDetails_s_sd

- s_&lt;cid_last_digit&gt;.userDetails_s_sn

- s_&lt;cid_last_digit&gt;.userDetails_s_so

- s_&lt;cid_last_digit&gt;.userDetails_s_ss

EL Logs/var/log/apps/p1dm/p1dm.log

Summarizer Logs/var/log/apps/summarizer/summarizer.log

KMW Logs/var/log/apps/kafkamongowriter/kafkamongowriter.log

Regression cases for SMS- **Phone number with new campaigns and Journey**

Blacklisted (from panel)

- Number on DND

- Dropped

- Invalid Format

- Dropped due to frequency capping

- Undelivered

- Invalid subscriber

- **Phone number with Verified counts with existing campaigns**

Expired

- Not Reachable

- Inbox Full

- Absent subscriber

---

### WhatsApp Broadcast Debugging

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3561127940)

endpoint for all environment are available here [https://netcoresolutions.atlassian.net/wiki/spaces/~861354763/pages/3498639373/DEV+QA+PreProd+PROD+ENVIRONMENT+DETAILS#EC2-Instance-Access.5](https://netcoresolutions.atlassian.net/wiki/spaces/~861354763/pages/3498639373/DEV+QA+PreProd+PROD+ENVIRONMENT+DETAILS#EC2-Instance-Access.5) 

- enable whatsapp flag in client DB 

 select * from phplist_config where item = "whatsapp_enable";
+-----------------+-------+----------+------+--------+
| item            | value | editable | type | enable |
+-----------------+-------+----------+------+--------+
| whatsapp_enable | 1     |        1 | NULL |   NULL |
+-----------------+-------+----------+------+--------+
1 row in set (0.00 sec)]]>**pod2**

**preprod**

**prod US **

**prod IND**

**prod EU**

fluentD logs kibana

[http://192.168.53.6:5601/app/kibana#/home?_g=()](http://192.168.53.6:5601/app/kibana#/home?_g=())

[kibana preprod logs](http://clkibana.netcore.co.in:5601/app/discover#/?_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-1d,to:now))&amp;_a=(columns:!(log),filters:!(),hideChart:!t,index:'1d4ab870-59cc-11ed-9cfd-dfb2ca2f4395',interval:auto,query:(language:kuery,query:''),sort:!(!('@timestamp',desc))))

[Kibana prod US logs](http://clkibana.netcore.co.in:5601/app/discover#/?_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-1d,to:now))&amp;_a=(columns:!(log),filters:!(),hideChart:!t,index:f9e48bd0-5684-11ed-8bec-fdd70329c0e8,interval:auto,query:(language:kuery,query:''),sort:!(!('@timestamp',desc)))) 

[Kibana prod IND logs](http://clkibana.netcore.co.in:5601/app/discover#/?_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-1d,to:now))&amp;_a=(columns:!(log),filters:!(),hideChart:!t,index:'07adbb20-59cc-11ed-9cfd-dfb2ca2f4395',interval:auto,query:(language:kuery,query:''),sort:!(!('@timestamp',desc))))

[Kibana prod EU logs](http://clkibana-eu.netcore.co.in:5601/app/discover#/?_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-15m,to:now))&amp;_a=(columns:!(),filters:!(),hideChart:!t,index:abb99630-6183-11ed-a69c-39f7d2cae16a,interval:auto,query:(language:kuery,query:''),sort:!(!('@timestamp',desc))))

fluentd logs access on server

ssh [root@192.168.2.61](mailto:root@192.168.2.61) / password - qwerasdf

`/var/log/apps/central-logging/sentry`

AWS account details

-

-

-

EC2 and access to Mysql

 SAS audience

SAS manager

---

### Whatsapp Integration details with CEE and CPAAS

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3522494512)

- CPAAS team follows these steps to integrate CEE -&gt; 

- How to Enabled Whatsapp on a new CEE panels &rarr;   

- Provide the following details to CPAAS team for integrating CEE with CPAAS panel

**CPAAS Description**

**CPAAS US Panel**

**CPAAS US Panel**

**CPAAS US Panel**

**CPAAS US Panel**

**CPAAS US Panel**

**CPAAS US Panel**

**CPAAS US Panel**

**CPAAS US Panel**

**CPAAS EU Panel**

**CPAAS US Panel**

**CPAAS EU Panel with EU Phone Num**

Use Only for

Manual

Manual

Manual

Manual

Manual

Manual

Manual

Automation

Automation

Automation

Manual

Client Type

cloud api client

Docker client

Docker client

cloud api client

Docker client

cloud api client

cloud api client

cloud api client

cloud api client

Docker client

cloud api client

CPAAS Client ID

74675

166617

77865

171434

176547

171436

171437

174614

219

175989

242

Username

v2sandbox

watestingone

Netcoresalesexp

ajcodebaseemail

intnc_watestingfive

qamanual1netcore

tprappin1testejc0r3

euqa1netcore

euapp_wauser2

intnc_cee_indi_sas

euapp_qa

Password

Netcore@123

&amp;?DhS4$J

&amp;?DhS4$J

Netcore@123

&amp;?DhS4$J

Netcore@123

Netcore@123

Netcore@1234

&amp;?DhS4$J

Netcore@123

&amp;?DhS4$J

**Smartech Description**

**POD2 Smartech**

**POD2 Smartech**

**POD2 Smartech**

**PreProd Smartech**

**Preprod Smartech**

**Prod US Smartech**

**Prod India Smartech**

**Prod US Smartech**

**Prod EU Smartech**

**Prod India Smartech**

**Prod EU Smartech**

Panel Name

pod2_akshata_qa

pod2_email_sarvesh3

pod2_lakshman

ajcodebase_email

devops5_prapp14

qa_manual1

tprappin1test

auto123

euauto123

indi_sas

euqa

Client ID

83151

80251

84681

22428

119769

107311

69705

170625

171752

175989

127904

Contact Number Alotted

-

918657885684

912249757677

8657885679

919625787947

8657885681

8657885683

8422989055

8657885689

912249757536

44-7599405314

MMAIL DB (Change done in CPASS Config file)

59.163.11.66 (Password : qwerasdf)

59.163.11.66 (Password : qwerasdf)

59.163.11.66 (Password : qwerasdf)

202.162.242.69 ([http://mmail.netcore.co.in](http://mmail.netcore.co.in) )

202.162.242.69 ([http://mmail.netcore.co.in](http://mmail.netcore.co.in) )

202.162.242.69 ([http://mmail.netcore.co.in](http://mmail.netcore.co.in) )

202.162.242.69 ([http://mmail.netcore.co.in](http://mmail.netcore.co.in) )

202.162.242.69 ([http://mmail.netcore.co.in](http://mmail.netcore.co.in) )

202.162.242.69 ([http://mmail.netcore.co.in](http://mmail.netcore.co.in) )

202.162.242.69 ([http://mmail.netcore.co.in](http://mmail.netcore.co.in) )

202.162.242.69 ([http://mmail.netcore.co.in](http://mmail.netcore.co.in) )

API Key

41a1de35948f915f64907ced9eed4f00

085164d1083970906270bb24e97a0b82

ce71df048c606c51580cf651be4cdab5

7d2e7bf7138adaa9e99a2b9de87f50b5

b2d4602e50df630cdcef6cf9141eed4d

d288a5d36ba70cbc1447aae08f5260ed

40217f559406cebd4bd388347adb1783

6711434e2ff2c7f630a83255a182ef8f

5c4567cb0c44d693a8ec11ca36a045f1

4b29f442e231cbb20038b2c767543006

API Endpoint - Get Attribute List

[http://59.163.11.120:9095/v3/](http://59.163.11.120:9095/v3/)

[http://59.163.11.120:9095/v3/](http://59.163.11.120:9095/v3/)

[http://59.163.11.120:9095/v3/](http://59.163.11.120:9095/v3/)

[https://api.netcoresmartech.com/v3/](https://api.netcoresmartech.com/v3/)

[https://api.netcoresmartech.com/v3/](https://api.netcoresmartech.com/v3/)

[https://api.netcoresmartech.com/v3/](https://api.netcoresmartech.com/v3/)

[https://apiin.netcoresmartech.com/v3/](https://apiin.netcoresmartech.com/v3/)

[https://api.netcoresmartech.com/v3/](https://api.netcoresmartech.com/v3/)

[https://goapiv3.eu-north-1.eu.netcoresmartech.com/v3/](https://goapiv3.eu-north-1.eu.netcoresmartech.com/v3/)

[https://apiin.netcoresmartech.com/v3/](https://apiin.netcoresmartech.com/v3/)

[https://goapiv3.eu-north-1.eu.netcoresmartech.com/v3/](https://goapiv3.eu-north-1.eu.netcoresmartech.com/v3/)

Webhook Endpoint

JWT Token / whatsapp_server_key

eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ2MnNhbmRib3giLCJleHAiOjI0MTgzODY1NTZ9.Bns9dXaGZ2h6ViS4JKNOfEj4Xwve5j1rOOIP9M0YNM3LGAej8dmm6WoTjfxFqeU3ByJ24foNMB1hpKKQmim5FA

eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ3YXRlc3RpbmdvbmUiLCJleHAiOjI1MjE1NTQ1Mzh9.P0qtVsgMklQUIqVlZZ6bkfFZicLcJjwrl7eMCLUMsR1-TWbJtqJcs3xQS3Ra5uL-AS8-jvEGERu7PMI3dDVXFQ

eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJuZXRjb3Jlc2FsZXNleHAiLCJleHAiOjI0MjUxMDI1MjZ9.ljC4Tvgz031i6DsKr2ILgCJsc9C_hxdo2Kw8iZp9tsVcCaKbIOXaFoXmpU7Yo7ob4P6fBtNtdNBQv_NSMq_Q8w

eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhamNvZGViYXNlZW1haWwiLCJleHAiOjI1MjQxOTg3MTF9.-sjVg-ETion-rpBG3pG6wIBoAvdnq1ElbiwjectQlZF906ghLB6MypmHwTWL0DQGM_dvNQrkjLardIJUheouuA

eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJpbnRuY193YXRlc3RpbmdmaXZlIiwiZXhwIjoyNTQwMzc1MzM0fQ.w50-XNFz0e55klilphbel7RuCaWIscltlrdDWbIiBQpB4CQmWGqLBS40vyP-BZ_Exqd8sIwaEcjlg2oDb692ZQ

eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJxYW1hbnVhbDFuZXRjb3JlIiwiZXhwIjoyNTI0MTk5MTA0fQ.5uGd3Wet8A_4OhhDAH9n1WmiSocZJecL40HukZQ9uEfvBb7z3Vonjd36GEYAtbvHER_JYf0m_GVJS-UddZnWWg

eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0cHJhcHBpbjF0ZXN0ZWpjMHIzIiwiZXhwIjoyNTI0MjE1ODUzfQ.YYt6GzYUPXAn0RmQ6YiunuPzF2rR5lTOAgolektPA_Sx-rybTgYypwkzkvaH8cBIHJXztpBcV-W9GgqlLaz4Dw

eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJldXFhMW5ldGNvcmUiLCJleHAiOjI1MjkzODkxNDZ9.iSlvm5ej50-Q-OjbbMVxNpq4nsN0sajrRi1EErcS4A_gFD4n7lNKRdpTyew4k6rIOtJrksJ4d9JL7m4nNIgekQ

eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJldWFwcF93YXVzZXIyIiwiZXhwIjoyNTMwMjQ1OTQxfQ.NLlwVShSX4tvnNSDAxj1hHCIMpGVwt_hkaDwfidiybbsfXy19SKwIYF2hmHfVyR7TPyLp6IRFUSldHB4Okk3zQ

eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJpbnRuY19jZWVfaW5kaV9zYXMiLCJleHAiOjI1NDI5NTU4NjR9.fLTplpIbfOdSX2ABV-m5iZGABnFUp0rIwyQurVECC-HR_Dt4IOL48Rt-kdnt10BS0Mqqaw4wIxuR88gLTr3Mpg

eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJldWFwcF9xYSIsImV4cCI6MjUzMzAyOTk0Nn0.LY4r1DIDXy4NgxEIHBrOaFmm2M1UbFweOdVE8XCPoA53fYCRbx7aO1JruRLtrdgR04jdcGwmnKytcZXJEulk7g

CPAAS Description

CPAAS US Panel

CPAAS US Panel

CPAAS US Panel

Use Only for

Manual

Manual

Manual

Login URL

[https://email.netcorecloud.com/](https://email.netcorecloud.com/)  

[https://email.netcorecloud.com/](https://email.netcorecloud.com/)  

[https://qa.pepipost.com](https://qa.pepipost.com/)

Cpass whatsapp client type

Docker

Docker

Cloud api client 

CPAAS Client ID

177899

177900

337

username

intnc_net_qa_cust

intnc_net_qa_mob

abhishekmauryanetcore

password

&amp;?DhS4$J

&amp;?DhS4$J

&amp;?DhS4$J

**Smartech Description**

**POD2 Smartech**

**POD2 Smartech**

**POD2 Smartech**

Panel Name

pod2_cust_akki

pod2_mobile_akki

pod2_zaki_qa

Client ID

81851

81831

84901

MMAIL DB (Change done in CPASS Config file)

59.163.11.66 (Password : qwerasdf)

59.163.11.66 (Password : qwerasdf)

59.163.11.66 (Password : qwerasdf)

API key

85ac5db2ec71c423c12e758f06e0a511

7191f0a030d24f405352afd206b138e6

808b0ce51f7bb0f406ddb854c2a95299

API Endpoint - Get Attribute List

[http://59.163.11.120:9095/v3/](http://59.163.11.120:9095/v3/)

[http://59.163.11.120:9095/v3/](http://59.163.11.120:9095/v3/)

[http://59.163.11.120:9095/v3/](http://59.163.11.120:9095/v3/)

Webhhok - WAMsgStatus

[https://alb2-dev0.netcoresmartech.com/wamsgstatus?clientid=](https://alb2-dev0.netcoresmartech.com/wamsgstatus?clientid=83151)81851

[https://alb2-dev0.netcoresmartech.com/wamsgstatus?clientid=](https://alb2-dev0.netcoresmartech.com/wamsgstatus?clientid=83151)81831

[https://alb2-dev0.netcoresmartech.com/wamsgstatus?clientid=](https://alb2-dev0.netcoresmartech.com/wamsgstatus?clientid=83151)84901

Webhhok - WAMsgOptinout

[http://alb2-dev0.netcoresmartech.com/waoptinout?clientid=](http://alb2-dev0.netcoresmartech.com/waoptinout?clientid=83151)81851

[http://alb2-dev0.netcoresmartech.com/waoptinout?clientid=](http://alb2-dev0.netcoresmartech.com/waoptinout?clientid=83151)81831

[http://alb2-dev0.netcoresmartech.com/waoptinout?clientid=](http://alb2-dev0.netcoresmartech.com/waoptinout?clientid=83151)84901

gmail id alotted

-

-

-

Contact Number Alotted

2249757652

2249757669

8657885680

Facebook Account Name and Password

-

-

-

JWT Token / whatsapp_server_key

eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJpbnRuY19uZXRfcWFfY3VzdCIsImV4cCI6MjU0NTk2ODUzM30.5ZNF_ZVdpgi3hRhOVjaIArmTspHGG_rt2yu2_4W5D_OWON9q05NvMePNYbiQ9v6TU-HQP5t7RlNtHJli4qzTmg

eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJpbnRuY19uZXRfcWFfbW9iIiwiZXhwIjoyNTQ1OTY4ODMyfQ.kSWrLNZ3AFyjvFKKWOkfwa98ESFaOcMa0NxYPZB4ONLXwX20cVcW1Irxtq0RJ-j0FIkaH-T72Cak5yIbedA4dg

eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhYmhpc2hla21hdXJ5YW5ldGNvcmUiLCJleHAiOjI1Mzc1MjMyODl9.8DF1sZASweCdn0TrM6ooVwTJJnHxa3to9QfoACl0ca-qQ4jhx_emZTAK-O9doDX6zh_TJimj_7_2Zx7BnaZHTA

---

### Enable whatsapp on CEE panels

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3728113782)

Steps to enable whatsapp on QA test panel for pod2 / preprod / prod - US , IND , EU

-  

Requesting you to add the panel name and env in the below table once whatsapp is enabled 

**panel_name **

**enviroment **

prapp14_email_qa1

US

intnc_cee_px_new / prapp6_automation

US

pod2_gaurav_qa / pod2_mayur_qa

POD2

---

### Debugging Viber Integration details with CEE and InfoBip

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3701440546)

**Environment**

**CEE Panel Name**

SIT

POD2

pod2_lakshman, pod2_email_rashmi

PreProd

ProdUS

ProdIndia

ProdEU

cURL call shared by Viber for direct testing- InfoBip Viber API details are mentioned here &rarr; [https://www.infobip.com/docs/api/channels/viber/send-viber-text-message](https://www.infobip.com/docs/api/channels/viber/send-viber-text-message) 

- Sample cURL call for Sending Viber Message with DOCX document

---

## 🔔 Push Notifications

### How to debug Geofence APN?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3655532689)

**Environment**

**URL**

POD2

[https://alb2-dev0.netcoresmartech.com/v1/geoFence?lat=19.1507084&amp;long=72.8831376&amp;page=1&amp;count=100&amp;type=android&amp;appId=d239bf7d7e7a4019ca1ae8ded074927f&amp;dist=50](https://alb2-dev0.netcoresmartech.com/v1/geoFence?lat=19.1507084&amp;long=72.8831376&amp;page=1&amp;count=100&amp;type=android&amp;appId=d239bf7d7e7a4019ca1ae8ded074927f&amp;dist=50)

PreProd

[https://geofence.netcoresmartech.com/geoFence?lat=19.1507121&amp;long=72.8831461&amp;page=1&amp;count=100&amp;type=android&amp;appId=2672b4d2741d2726ae1bc2e44259bdd1&amp;dist=50](https://geofence.netcoresmartech.com/geoFence?lat=19.1507121&amp;long=72.8831461&amp;page=1&amp;count=100&amp;type=android&amp;appId=2672b4d2741d2726ae1bc2e44259bdd1&amp;dist=50)

ProdUS

[https://geofence.netcoresmartech.com/geoFence?lat=19.865717&amp;long=86.111277&amp;page=1&amp;count=100&amp;type=android&amp;appId=9c74a0f8f6aaa4562ef7e486cc31d6d3&amp;dist=100](https://geofence.netcoresmartech.com/geoFence?lat=19.865717&amp;long=86.111277&amp;page=1&amp;count=100&amp;type=android&amp;appId=9c74a0f8f6aaa4562ef7e486cc31d6d3&amp;dist=100)

ProdIndia

[https://geofencein.netcoresmartech.com/geoFence?lat=21.485886&amp;long=83.972166&amp;page=1&amp;count=100&amp;type=android&amp;appId=67a2ed823b5711e2b2339d984db09cd3&amp;dist=50](https://geofencein.netcoresmartech.com/geoFence?lat=21.485886&amp;long=83.972166&amp;page=1&amp;count=100&amp;type=android&amp;appId=67a2ed823b5711e2b2339d984db09cd3&amp;dist=50)

ProdEU

[https://geofenceeu.netcoresmartech.com/geofence?lat=19.865717&amp;long=86.111277&amp;page=1&amp;count=100&amp;type=android&amp;appId=f0d5bef09d69c5d94e0d42ac9ae153fe&amp;dist=100](https://geofenceeu.netcoresmartech.com/geofence?lat=19.865717&amp;long=86.111277&amp;page=1&amp;count=100&amp;type=android&amp;appId=f0d5bef09d69c5d94e0d42ac9ae153fe&amp;dist=100)

**Environment**

**MySQL (Master)**

AWS RDS (MySQL) details (Slave)

POD2

- mysql -u root -h 192.168.54.26 -p

- mysql -u admin -h [geofencedb.cxtrpf0viksf.ap-south-1.rds.amazonaws.com](http://geofencedb.cxtrpf0viksf.ap-south-1.rds.amazonaws.com) -p

- password: sdfDk-vd012sa

- AWS Account: 406255921449

PreProd

- mysql -u root -h papi1.netcore.co.in -p 

- mysql -u admin -h [geofencedb-4916.cxxxrrbxlhx3.us-east-1.rds.amazonaws.com](http://geofencedb-4916.cxxxrrbxlhx3.us-east-1.rds.amazonaws.com) -p 

- password: 3+C20!21E3dV%7

- AWS Account: 936954454931

ProdUS

- mysql -u root -h papi1.netcore.co.in -p 

- mysql -u admin -h [geofencedb1-4931.cfekyslj9jdi.ap-south-1.rds.amazonaws.com](http://geofencedb1-4931.cfekyslj9jdi.ap-south-1.rds.amazonaws.com) -p

- password: 3+C20!21E3dV%7

- AWS Account: 936954454931

ProdIndia

- mysql -u root -h tpapiin1.netcore.co.in -p 

- `mysql -u admin -h geofencein1.cfekyslj9jdi.ap-south-1.rds.amazonaws.com -p`

- password: 3+C20!21E3dV%7

- AWS Account: 936954454931

ProdEU

- mysql -u root -h 10.106.0.179 -p

- mysql -u admin -h [geofenceeu1.cgftyqaokrjc.eu-north-1.rds.amazonaws.com](http://geofenceeu1.cgftyqaokrjc.eu-north-1.rds.amazonaws.com) -p

- password: 3+C20!21E3dV%7

- AWS Account: 282839518083

**Environment**

**Machine Host**

**Log Location**

POD2

PreProd

ProdUS

[smtwebredis.netcore.co.in](http://smtwebredis.netcore.co.in) 

/var/log/apps/geofence_in/geofence/

ProdIndia

[smtwebredis.netcore.co.in](http://smtwebredis.netcore.co.in)

/var/log/apps/geofence_in/geofence/

ProdEU

10.106.2.113

/var/log/apps/geofence_eu/geofence

**Environment**

**Panel Name**

POD2

pod2_apn_aakash

PreProd

ajcodebase_email

ProdUS

devops5_prapp14

ProdIndia

tprappin1test

ProdEU

euqa_email

How to to GeoFence location on iOS?- [https://docs.google.com/document/d/15teYm4Zetdmp-PNLRmJ1YQggmc-U_5dwhCBRyTbIcSw/edit](https://docs.google.com/document/d/15teYm4Zetdmp-PNLRmJ1YQggmc-U_5dwhCBRyTbIcSw/edit)

---

### Debug APN 100X Campaign?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3709534270)

**Component**

**POD2**

**Prod-US**

**Prod-India**

**Prod-EU**

GO Daemon Server

pnaws1

GO Daemon properties Android

pnaws1@/opt/go_pnserver/pnserver.properties

GO Daemon Path Android

pnaws1@/opt/go_pnserver/

Start GO daemon Android

systemctl start go_pnserver.service

Daemon Log Android

pnaws1@/var/log/apps/gopnserver/pns_andriod.log

PNServer Lambda Android

pnaws1 -A : [web@pnaws1.netcore.co.in](mailto:web@pnaws1.netcore.co.in) -P: PN@123

PNServer Lambda Android Log

pnaws1@/var/log/apps/fluent_prod/twlogs

GO Daemon properties iOS

pnaws2 and tpnaws1@/opt/go_pnserver/pnserver.properties

Daemon Log iOS

pnaws2 and tpnaws1@/var/log/apps/gopnserver/ios.log

What is the Business Feature that Connects GoPushPQ to Cassandra?- For 100X Non-Personalized campaign of Identified users, GoPushPQ's pushes data in Cassandra and Event Logger (EL) reads the data

Why Does GoPushPQ Use Cassandra?- GoPushPQ utilizes Cassandra to deliver Push Notification (PN) payloads to the Google FCM server.

- When the TRID is unique for each user in the PN payload, Google FCM requires a separate HTTP call for each user. This can significantly impact the performance of a 100X campaign.

- For example, if there are 100,000 users, GoPushPQ would need to contact the Google FCM server 100,000 times. However, when a single TRID is used, multiple tokens can be sent in a single HTTP call.

What Data is Stored in the Cassandra Table?- In Cassandra, the data is organized in tables with names following the **CLIENT_ID-MSG_ID** pattern.

- GoPushPQ sends payloads in the format like this: **58158-142505-0-0-231013131505-IR**, where the UserID is 0. 

- How to interpret TRID: **ClientID-MessageID-UserID-AutomationID-Timestamp-Anon/Identified User**

- These payloads are forwarded to the Google FCM server and then reach the user's mobile phone. Subsequently, the same TRID is sent to the EL. 

- EL queries the Cassandra DB table using the guid and retrieves the uid. This transformation results in a TRID like this: **58158-142505-7-0-231013131505-IR**, now including the uid 7.

- Sample Query Output from Cassandra:

 select * from apn_cache.apn_cache_176031_23539;
 guid                                 | uid
--------------------------------------+-----
 4fcccea4-923b-42a9-a0_20230929020508 |   7

(1 rows)]]>

---

### Debug Java PNServer

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3754065922)

How to debug iOS P12 or P8 certificate refresh on Prod-US?- Upload a new P8 certificate on Smartech Panel

- ssh on [pnredis.netcore.co.in](http://pnredis.netcore.co.in)

- Execute the command: **redis-cli KEYS *****PNS:***

The output should be something like this

- 
- Now check the following logs on [pnredis.netcore.co.in](http://pnredis.netcore.co.in) machine

- The log should print all the IP addresses which you got above and call should be successed. Example below

-

---

### How Smartech Mobile SDK processes Push Notification (PN)

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3394207766)

**Receiving a PN**In the case of iOS Push Notification flow the PN is first received at the Notification Service Extension and then it is presented to the user by the OS. So to differentiate push notifications from multiple sources/vendors a check has to be implemented in the Notification service extension layer itself.Which is documented [here](https://cedocs.netcorecloud.com/docs/adding-and-configuring-of-extensions-in-your-app-1#configuring-service-extension-with-smartech-sdk).

**Clicking a PN**Now when the user taps on the notification the callback is received at the AppDelegate (didReceiveNotificationResponse) and is passed to the SDK, here you can use the same above method to differentiate the source of the notification.

**Short Summary**

**Native SDK Flow.**

##### Receiving a PNSmartech Panel -&gt; APNS -&gt; App's Notification Service Extension -&gt; Check if PN from Smartech -&gt; Smartech SDK##### Clicking a PNNotification Tray -&gt; Click -&gt; App Delegate -&gt; Check if PN from Smartech -&gt; Smartech SDK -&gt; Callback to App Delegate.**Cross-Platform SDK Flow.**

##### Receiving a PNSmartech Panel -&gt; APNS -&gt; App's Notification Service Extension -&gt; Check if PN from Smartech -&gt; Smartech SDK##### Clicking a PNNotification Tray -&gt; Click -&gt; App Delegate -&gt; Check if PN from Smartech -&gt; Smartech SDK -&gt; Callback to App Delegate -&gt; Flutter/ReactNative/Cordova Plugin Layer -&gt; Clients App Level Flutter/ReactNative/Cordova codebase where deeplink logic will be written

---

### App Push Trigger API or APN Trigger via API

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3461284135)



---

## 🎯 Journey & Automation

### Journey Debugging

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3452829697)

-  

-  

-  

-  

-  

-  

- [https://netcoresolutions.atlassian.net/wiki/spaces/CJR/pages/3514269726/Journey+setup+on+aws+servers+details#Journey-on-Euro-AWS](https://netcoresolutions.atlassian.net/wiki/spaces/CJR/pages/3514269726/Journey+setup+on+aws+servers+details#Journey-on-Euro-AWS) 

-  

- 

-   

-  

-  

- [https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3993600020](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3993600020) 

-

---

### Debug Merchandising Trigger Journey - QA Help Document

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3853647876)

## **Please ensure that the following requirements are met before proceeding with the integration:**1. The Shopify setup should be present in the panel. This will be done by the Shopify team, including Abhaykant Nirala, Aravinda V, or Rajesh Raikar.

2. PIM integration is required for the Shopify store and the Netcore app.

3. You will need to have the following PIM credentials ready before proceeding with the integration:

- PIM link: [https://pim.unbxd.io/#/login](https://pim.unbxd.io/#/login) 

- User email: "your_email@example.com"

- Password: April@2024!!!

**PIM Integration for Shopify store : **

- Open the Apps section and press Develop Apps for your store.

- Press Allow custom app development.

- Next step - Create a Custom app.

- Choose scopes and permissions to store data.

- Webhook Subscriptions Event version - leave without any changes.

- Next, open the Overview tab and Install the app.

- Access tokens and shared secrets will be available in the API credentials section.

NOTE : 

- Please note that the Access token can be seen just once. If you lose it you will need to create another App.

- ApiKey, ApiPassword, Shopify Shared Secret, AccessToken, and Store Url are required for installing the Shopify channel in PIM.

- You can find additional information in the Shopify guide.

- You can follow the steps mentioned in the PIM - [https://pim.unbxd.io/#/appStore/orgId=dcfc7fc0000c0184814dc8d8c9808307;t1=613f281ff1fb697fe692b5cf](https://pim.unbxd.io/#/appStore/orgId=dcfc7fc0000c0184814dc8d8c9808307;t1=613f281ff1fb697fe692b5cf) 

-   

**PIM Integration for Netcore app : **

- - Navigate to the create netcore app page in PIM - [https://pim.unbxd.io/#/appStore/orgId=dcfc7fc0000c0184814dc8d8c9808307;t1=64b5220cb9155f12a2d5c70c](https://pim.unbxd.io/#/appStore/orgId=dcfc7fc0000c0184814dc8d8c9808307;t1=64b5220cb9155f12a2d5c70c)  

- Please provide the name of your netcore app 

- Enter the panel API key

- Enter the panel client ID

- Enter the Shopify store site id

- Select the panel environment from the dropdown

**Templates : **

- Use &ldquo;truncate template without any validations from pim&rdquo; for import from Shopify to PIM

- Use &ldquo;Netcore Export Template&rdquo; for export from PIM to Netcore

**Import :**

- Click on this link to navigate import of Shopify store to PIM - [https://pim.unbxd.io/#/imports/orgId=dcfc7fc0000c0184814dc8d8c9808307;t1=imports;action=details](https://pim.unbxd.io/#/imports/orgId=dcfc7fc0000c0184814dc8d8c9808307;t1=imports;action=details) 

- Click on import &gt; New Import 

- Select the Shopify store

- Give the name and select the default as a vertical

- Select the import template

- Click on review and import

- Click on save and proceed

- Click on save and import

- Select the &ldquo;Import with readiness check&rdquo;(Optional)

- Click on Start import

- User can see the products getting imported successfully from Shopify to PIM

**Certify the imported products as netcore certified products : **

- Navigate products

- Click on products

- Select the imported products

- Click on certify

- Select the &ldquo;certify as netcore products&rdquo; from the dropdown

- Click on certify 

- Now all the imported products will certify as netcore products

**NOTE : **

- Initial synch: We do initial synch when we are exporting Shopify products from PIM to Netcore for the first time

- Incremental synch: We do incremental synch when we are exporting from Shopify products from PIM to Netcore when ever there is a change in Shopify data

**Export :**

- Select netcore-certified products

- Click on the export products

- Select the channel option

- Select the netcore app from the dropdown

- Click on send addition parameters

- Select the initial/incremental synch

- Select the export template as &rdquo;Netcore export template&rdquo; from the Netcore ETL dev store

- Click on Export with readiness check

- Export will get started

- The trigger will happen once the export is completed

**MT Journey Creation : **

**Triggering the Journey from PIM : **

---

### Journey Business Trigger

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3485794319)

store business activity payload- Redis hash &ldquo;journey_business_trigger_payload_definition&rdquo; signature to store Business Activity payload

- Redis Hash Name: journey_business_trigger_payload_definition

Key: clientid:business-activity-name

- Value: json definition

- e.g. hset journey_business_trigger_payload_definition &lsquo;80231:back in stock&rsquo; 'json-schema-def'

- Please refer below sample of json-schema def

Create Automation flow- Segment json will be stored in business_segment_master table in clientdb  (segment id will be unique across adhoc_segment_master, custom_segment_master and business_segment_master)and also in mongo segJson collection

Redis is either aws local redis or AWS elasticache redis- Redis Hash Name: journey_business_activity_mapping:clientid:businessactivityname

Key: journeyid

- Value: mapping-json

- Please find below sample of mapping json

**Component**

**Repository**

**Dev status**

1

BusinessActivityLambda AWS API

[https://corporate.netcore.co.in/gitbucket/git/productone/buisnesstriggerapi.git](https://corporate.netcore.co.in/gitbucket/git/productone/buisnesstriggerapi.git)&nbsp;

Dev Done&nbsp;

2

RedisLambdaAPI (used by PAPI UI to cache data into AWS redis)

[https://corporate.netcore.co.in/gitbucket/git/productone/redislambdaapi.git](https://corporate.netcore.co.in/gitbucket/git/productone/redislambdaapi.git)&nbsp;

Dev done&nbsp;

3

SAS API

[https://corporate.netcore.co.in/gitbucket/git/productone/goLambdaAudienceSelector.git](https://corporate.netcore.co.in/gitbucket/git/productone/goLambdaAudienceSelector.git)&nbsp;

Dev done

4

lambdaprocessor2 (LP2)

[https://corporate.netcore.co.in/gitbucket/git/productone/lambdaprocessor2.git](https://corporate.netcore.co.in/gitbucket/git/productone/lambdaprocessor2.git)&nbsp;

Code changes done(need modification to invoke papi api to get business activity payload from aws redis instead of directly querying aws redis)

5

subsapi2

[https://corporate.netcore.co.in/gitbucket/git/productone/subsapi2.git](https://corporate.netcore.co.in/gitbucket/git/productone/subsapi2.git)&nbsp;

Dev done

6

Journey UI

[https://corporate.netcore.co.in/gitbucket/git/productone/smartech-angular.git](https://corporate.netcore.co.in/gitbucket/git/productone/smartech-angular.git)&nbsp;

Dev in progress

7

VerticaWriter

[https://corporate.netcore.co.in/gitbucket/git/productone/vertica_writer.git](https://corporate.netcore.co.in/gitbucket/git/productone/vertica_writer.git)&nbsp;

On Hold

8

SmartAnalytics

[https://corporate.netcore.co.in/gitbucket/git/productone/smartanalytics.git](https://corporate.netcore.co.in/gitbucket/git/productone/smartanalytics.git)&nbsp;

Dev done

9

gogetdataset

[https://corporate.netcore.co.in/gitbucket/git/productone/gogetdataset.git](https://corporate.netcore.co.in/gitbucket/git/productone/vertica_writer.git)&nbsp;

Dev Done

10

Smartech UI changes

Dev in progress

Sample businessactivity node:Sample segment rule for activityBusinessActivityLambda AWS APIAssumptions:

- AWS accessible though AWS

- Storing business activity in vertica from AWS lambda API will be asynchronous (through VW)

- SAS API call from AWS lambda API will be asynchronous

Develop AWS Lambda API which client invokes when client want to perform business activity (e.g product back in stock, new series available etc)

Business activity triggered via REST API configured using AWS API&nbsp; gateway.

API gateway will invoke the first lambda (validator) and validator lambda function will invoke the second lambda (processor) function.

Validator Lambda function&nbsp;

- API will validate authentication key first (from aws redis p1_capikey)

- Validates client's request with payload json schema from aws redis journey_business_trigger_payload_definition hash where key will be clientid:activity name.If payload param provided my client not get validated against json schema present in aws redis, validation fails and error response returned to client with details

- On successful validation it will invoke second lambda

Processor lambda

- Get all journey details associated with the given business trigger id from aws redis hash &nbsp;journey_business_activity_mapping_clientid:businessactivityname&nbsp;

- Store business activity payload in AWS Redis for personalization with ttl of one day (ttl will be configurable)

set journey_bt_payload:requestid:activityid payload_json EX 86400- Create PR1_BUSINESSACT event and push to Kafka for verticaWriter

- Foreach journey id Invoke SAS API

- API Signature

- 
PR1_BUSINESSACT Event SignatureRedisLAMBDA API- It will be used by PAPI UI/LP2&nbsp; to store/get data to/from AWS redis or to perform hset/get redis operation on AWS redis

- 
Tested UTF-8 characters with redis lambda API and it is working properlyVertica_writer- Changes to consume PR1_BUSINESSACT processor

- Develop PR1_BUSINESSACT processor to process business activity

- Store business activity payload in vertica database in semi structured format i.e. as json

- BT Lambda will read kafka topic name from Env, if its present it will publish to kafka else it will not publish

- BT events will be pushed to CG_0_PR0 topic always (but it wil be configurable in BT lambda)

- BT parameter payload will be stored in form of json in vertica table

- Vertica writer will store it in one table for all clients

- BT event will be processed in batch only as per current implementation of VW

- Table will have column clientid, bid, ad, at, payload

SmartAnalytics (query builder)- It will read segment url from mongo segJson collection, replaces placeholders and return vertica query to SAS API

- 
subsapi2- For business trigger activity( bsegid key present in trigger node), modification in upsertautomation api to

Store business activity details in **nmi_bt_journey_details **table

- Update clojure code to store :bid and :bsegid in index data

- Changes to populate businessactid and segment id in clojure code

- - Gogetdataset

Changes to update requestid (coming in request parameter) in event&nbsp;

lambdaprocessor2- *Feasibility check to identify can we use rootlistrecord event signature for businessactivity?*

rootlistrecord signature is as follows:

- Yes

- In :listid we can pass businessactid.attrs is json and structure is as shown below

- - *Changes in LP2*

If businessactid present in clojure code index data,get business activity payload for given business activity id from aws redis key journey_bt_payload:requestid:activityid

- Changes to add business activity payload in json string published to papi&nbsp;

- Business activity payload parameters added into json published to papi for send action against payload key as shown below

Benchmark LP2 changes. PFB link for stats- SMT-13738f35b0ece-c90d-3aa4-bc31-5387dc866132System Jira 

- Audience Selection service changes for Business trigger

Do API call to get anon and identified queries from QB.

- Add these query in select union.

- Update 1st lambda schema to support business trigger.

- SAS Request

- **Access the Servers** Run the following commands:

**Expected Response:**- **Verify Business Trigger Logs** Use the `requestId` from the response and check the logs:

Look for the **SAS-V2 API call** in these logs.

**4. Check Vertica Audience Logs** Navigate to:

 Find the log file containing a **CSV of users** fetched from the Vertica DB based on UI conditions (e.g., &quot;Add to Cart last 10 days&quot;). The file should look like this:

 Download and verify the CSV:

- If **empty**, no users are available, and the Journey Trigger won't work.

- If **not empty**, proceed to the next step.

- **Validate Redis Queues in Tredis** Search for `uid` in Redis queues:

 Check the following queues for `RPUSH`:

- `cgt0`

- `cgt1`

- `cgt2` 

- This confirms if requests are reaching **LP Redis**.

- **Check Storm Logs Based on Queue Name** If the journey has a **wait node**, verify **Deferred Publisher Logs** in **Argo CD**. 

- Look for log patterns like:

Check **queue length** in Tredis:

 If `0`, the queue is empty, and the process might be failing.&nbsp;(edited)&nbsp;

---

## 🗄️ Database & Data Management

### Debug and Use Vertica DB

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3316023297)

**Environment**

**Machine**

**Log Location**

PreProd

SIT

192.168.54.1

Prod-US

23.20.112.25352.3.75.18054.80.73.17144.206.174.206 ( only for bulk upload )

Prod-India

3.7.14.2473.6.200.118

43.204.125.20 ( only for bulk upload )

Prod-EU

10.106.0.15110.106.0.158

path - /opt/verticaMigration/POD2script - python mysql_vertica_column_verification.py &lt;CID&gt;

How to export column names for all tables in Vertica DB for a specific schema?- Following sample command for PreProd environment

 /tmp/columns_in_174944.txt]]>How to export result of select query into a csv file from Vertica DB?- Login to the machine on which VerticaDB node is running and start the Vertica DB console. then execute the following command. Change the SELECT query as per your requirement

How to run vertica migration script?[https://docs.google.com/document/d/1PP4OAQWq25FoyeipTdmyEq3X9TBlmeTsffMixCrXM9I/edit](https://docs.google.com/document/d/1PP4OAQWq25FoyeipTdmyEq3X9TBlmeTsffMixCrXM9I/edit) 

Disable Vertica for a panel in smartech-ui and other - To disable Vertica for a panel in smartech-ui

- To disable Vertica for a panel in backend components like EL,KMW, etc.

Move panel to inmigration in verticaDB

- Delete p1_ccmap_lastRun in AREDIS

- Run following cURL command from 192.168.54.70 for POD2. for

- Value of verticaEnable should be false in redis. Use the below command

---

### How to find table name , list id , Segmentid from Vertica DB ?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3696623625)

How to get the schema table names? select table_schema,table_name from tables where table_name='userDetailsLists' and table_schema not like '%backup%';
 table_schema |    table_name    
--------------+------------------
 s_1          | userDetailsLists
 s_0          | userDetailsLists
 s_4          | userDetailsLists
 s_3          | userDetailsLists
 s_8          | userDetailsLists
 s_6          | userDetailsLists
 s_5          | userDetailsLists
 s_9          | userDetailsLists
 s_2          | userDetailsLists
 s_7          | userDetailsLists
 s_89461      | userDetailsLists
 s_84264      | userDetailsLists
 s_79314      | userDetailsLists
 s_119403     | userDetailsLists
 s_60723      | userDetailsLists
 s_76812      | userDetailsLists
 s_113012     | userDetailsLists
(17 rows)
]]>Find out whether table contains duplicate list for cid,lid combination or not 0;
  CID   | LID |  count  |  count  |  diff   
--------+-----+---------+---------+---------
 148192 | 455 |   22449 |   24898 |    2449
 176492 |   3 |   39793 |  118088 |   78295
 167732 |   4 |       1 |       3 |       2
 150202 |  90 | 4499164 | 4504042 |    4878
 167552 | 321 |   37277 |   74554 |   37277
 150202 | 151 | 8010261 | 8010267 |       6
 150202 | 152 | 1110773 | 1110774 |       1
 176492 |   6 |       2 |       6 |       4
 150202 | 169 | 7880564 | 7880622 |      58
 150202 | 283 |     685 |    1370 |     685
 176732 |   2 |       1 |       2 |       1
 165902 |   2 |    2679 |    2986 |     307
 148192 | 344 |       3 |       6 |       3
  73492 | 334 | 1117812 | 1117990 |     178
 148192 | 106 |    4367 |    8734 |    4367
 148192 |  41 |  465137 |  476233 |   11096
 150202 | 279 |  743434 | 1486868 |  743434
 150202 | 171 |   34301 |   53001 |   18700
 167552 | 319 |    9868 |   19736 |    9868
 148192 | 127 |   16169 |   32131 |   15962
 148192 | 527 |   21515 |   43030 |   21515
 165902 |  11 |   28891 |   57782 |   28891
 128412 |   2 | 4875063 | 4884704 |    9641
 167552 | 320 |     368 |     736 |     368
 167552 | 328 |  106287 |  212574 |  106287
 148192 | 163 |  263076 |  268250 |    5174
 173312 |   7 |     143 |     144 |       1
 150202 | 215 |  567099 |  604735 |   37636
 150202 | 263 |  144279 |  288557 |  144278
 167552 | 322 |    2460 |    4920 |    2460
 150202 |  48 |       6 |       7 |       1
 150202 | 224 |    8806 |   17612 |    8806
 150202 | 197 |   46656 |   69232 |   22576
 150202 | 218 | 1017535 | 1017680 |     145
 148192 | 124 |   16170 |   23564 |    7394
 148192 | 188 |    3610 |    7220 |    3610
 173312 |   5 |      99 |     100 |       1
 148192 | 133 |    5140 |   10280 |    5140
  61362 |   3 | 3675626 | 7290530 | 3614904
 150202 | 108 | 1280375 | 1280378 |       3
 148192 |  95 |   23502 |   27004 |    3502
 165902 |  22 |    1262 |    1553 |     291
  73492 | 268 |  375677 |  376351 |     674
 150202 | 228 |    8806 |   10247 |    1441
(44 rows)
]]> 0)) a where  row_num = 1;
]]> select cid,lid,count(1),count(distinct uid),(count(1) - count(distinct uid)) as diff from userdetailsLists_tmp group by 1,2;
  cid   | lid |  count  |  count  | diff 
--------+-----+---------+---------+------
 167552 | 319 |    9868 |    9868 |    0
 148192 | 127 |   16169 |   16169 |    0
 148192 | 527 |   21515 |   21515 |    0
 165902 |  11 |   28891 |   28891 |    0
 150202 | 171 |   34301 |   34301 |    0
 150202 | 283 |     685 |     685 |    0
 176732 |   2 |       1 |       1 |    0
 165902 |   2 |    2679 |    2679 |    0
 148192 | 344 |       3 |       3 |    0
 148192 |  41 |  465137 |  465137 |    0
 150202 | 279 |  743434 |  743434 |    0
  73492 | 334 | 1117812 | 1117812 |    0
 148192 | 106 |    4367 |    4367 |    0
 150202 |  90 | 4499164 | 4499164 |    0
 148192 | 455 |   22449 |   22449 |    0
 176492 |   3 |   39793 |   39793 |    0
 167732 |   4 |       1 |       1 |    0
 167552 | 321 |   37277 |   37277 |    0
 150202 | 151 | 8010261 | 8010261 |    0
 150202 | 152 | 1110773 | 1110773 |    0
 176492 |   6 |       2 |       2 |    0
 150202 | 169 | 7880564 | 7880564 |    0
 148192 | 163 |  263076 |  263076 |    0
 150202 | 215 |  567099 |  567099 |    0
 150202 | 263 |  144279 |  144279 |    0
 128412 |   2 | 4876392 | 4876392 |    0
 173312 |   7 |     143 |     143 |    0
 167552 | 320 |     368 |     368 |    0
 167552 | 328 |  106287 |  106287 |    0
 148192 |  95 |   23502 |   23502 |    0
 165902 |  22 |    1262 |    1262 |    0
 150202 | 228 |    8806 |    8806 |    0
  73492 | 268 |  375677 |  375677 |    0
 150202 | 218 | 1017535 | 1017535 |    0
 148192 | 124 |   16170 |   16170 |    0
 148192 | 188 |    3610 |    3610 |    0
 173312 |   5 |      99 |      99 |    0
 148192 | 133 |    5140 |    5140 |    0
  61362 |   3 | 3681354 | 3681354 |    0
 167552 | 322 |    2460 |    2460 |    0
 150202 |  48 |       6 |       6 |    0
 150202 | 224 |    8806 |    8806 |    0
 150202 | 197 |   46656 |   46656 |    0
 150202 | 108 | 1280375 | 1280375 |    0
(44 rows)
]]> delete from s_2.userdetailsLists where (cid,lid) in (select distinct cid,lid from userdetailsLists_tmp);commit;
  OUTPUT  
----------
 41581490
(1 row)
]]> insert into s_2.userdetailsLists(cid,utype,uid,lid,ad) (select cid,utype,uid,lid,ad from userdetailsLists_tmp);commit;
  OUTPUT  
----------
 36474248
(1 row)]]> select * from (select cid,lid,count(distinct uid), count(1),(count(1) - count(distinct uid)) as diff from s_2.userdetailsLists GROUP BY 1,2) a where diff > 0;
 cid | lid | count | count | diff 
-----+-----+-------+-------+------
(0 rows)
]]>

---

### Debug API built on top of VerticaDB

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3634725074)

**Project name**

**Link**

mongo RFM

mongo cohort

mongo Funnel

LSWebApp

MAU

mongo segmentation

Kafka Rest Proxy

Summarizer

go-get-segment

go-cro-server

Vertica On-boarding API

Revenue Dashboard API

NSM API

Service Discovery

Raman Scheduler

Vertica DB

Vertica Writer

vertica Smart Analytics

predictive segment API

Vertica Funnel API

Vertica Monitoring

vertica migration

kafka monitor

Kafka Library

user path API

vertica cohort

vertica RFM

User Report API

Contact Insight API

Revenue &amp; Conversion API

Geo Fence API

Unified Listing API

Engagement dashboard API

Journey Summary API

Raman API

Vertica Big Query API

Behavior Dashboard API

Home Dashboard API

Hansal Report API

[https://netcoresolutions.atlassian.net/wiki/spaces/~80927302/pages/2171634180/Hansel+SMT+Integration+APIs](https://netcoresolutions.atlassian.net/wiki/spaces/~80927302/pages/2171634180/Hansel+SMT+Integration+APIs) 

Preferred channel API

Email Summary API

SAS API

personalization API

Reachable count API

---

### How Vertica Migration Script works for migrating Data from MySQL to VerticaDB?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3686072457)



---

### How to use Vertica Migration scripts?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3842474001)

Refer this word document. Will import it to confluence later [https://docs.google.com/document/d/1PP4OAQWq25FoyeipTdmyEq3X9TBlmeTsffMixCrXM9I/edit](https://docs.google.com/document/d/1PP4OAQWq25FoyeipTdmyEq3X9TBlmeTsffMixCrXM9I/edit)

---

### Debug Vertica Contact Reachability

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3740073986)

PreProd

Prod-US

Prod-India

Prod-EU

---

### Debug and Use MySQL DB

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3822452824)

papi_smsmessage

SMS Broadcast

push_message

APN Broadcast

webpush_message

BPN Broadcast

whatsapp_message

Whatsapp Broadcast

wp_campaign

WebPersonalization Campaign

inappmsg_details

InApp Campaign

webmsg_details

WebMessage Campaign

---

### How to debug MongoDB issues (Client Mongo and DMONGO)

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3688202241)

What is Client Mongo and DMONGO?- In the Client Mongo setup, data from each panel is stored in individual databases. Client Mongo serves as the repository for all campaign information and user activity records, such as SMS open rates, PN (Push Notification) deliveries, and more.

- DMONGO, short for Dashboard Mongo, is employed to aggregate data from all customers into a unified database. This database is utilized to present summary statistics, including the total number of SMS deliveries and published email campaigns, among other metrics.

How to identify Client Mongo Cluster of a panel?- First, find the MongoDB cluster detail of the panel by executing **HGET p1_mgmap** command on **AREDIS**. Example:

- AREDIS details as per environment

**Environment**

**AREDIS Machine Host**

**Example**

POD1

192.168.54.8

POD2

192.168.54.26

PreProd

[tredis.netcore.co.in](http://tredis.netcore.co.in)

Prod-US

[aredis.netcore.co.in](http://aredis.netcore.co.in)

Prod-India

[taredisin1.netcore.co.in](http://taredisin1.netcore.co.in)

Prod-EU

redis-ingress.eu-north-1.eu.smt.internal

How to identify Client Mongo Cluster Credentials?- You can find the Mongo Cluster Credentials of a panel by executing HGET p1_mgaccess command.

- Example as per environment

**Environment**

**AREDIS Machine Host**

**Example**

POD1

192.168.54.8

POD2

192.168.54.26

PreProd

[tredis.netcore.co.in](http://tredis.netcore.co.in/)

Prod-US

[aredis.netcore.co.in](http://aredis.netcore.co.in/)

Prod-India

[taredisin1.netcore.co.in](http://taredisin1.netcore.co.in/)

Prod-EU

redis-ingress.eu-north-1.eu.smt.internal

How to connect Client Mongo Cluster?- In the above output of p1_mgaccess, note down the value of host and port

- Example: host = [nc-mgus8-cfg1.netcore.in](http://nc-mgus8-cfg1.netcore.in) AND port = 27015

- For PROD-US server, SSH to [**mongoquery1.netcore.co.in**](http://mongoquery1.netcore.co.in) and execute this command

**Environment**

**Mongo Version**

**SSH to Machine**

**Connection String**

POD1

Mongo5

`192.168.54.21`

thenssh 10.12.13.116ORssh 10.12.13.122Prod-Ind

Mongo5

Prod-US

Mongo7

port 1  smartechrojumpcloud-usssh&nbsp; [nc-ency-mgus2-cfg1.netcorein.com](http://nc-ency-mgus2-cfg1.netcorein.com/)

mongosh -u readwrite -p readwrite --authenticationDatabase admin --host [nc-ency-mgus2-cfg1.netcorein.com:27015](http://nc-ency-mgus2-cfg1.netcorein.com:27015)

qa_manual1_custid

**Environment**

**Command to Connect**

POD1

- SSH to 192.168.54.21 and execute this command

Prod-US

- For PROD-US server, SSH to [**mongoquery1.netcore.co.in**](http://mongoquery1.netcore.co.in) and execute this command

Prod-EU

How to find all the details of a specific user in Mongo? db.userDetails.find({uid : 1}).pretty();
{
	"_id" : ObjectId("5efc275332cbfd9a3f9637a1"),
	"uid" : 1,
	"a" : {
		"d" : 0,
		"bl" : 0,
		"em" : ""your_email@example.com"",
		"fk" : ""your_email@example.com"",
		"mo" : "9969622359",
		"att2" : "sarvesh",
		"att10" : null,
		"att14" : null,
		"att21" : null,
		"att22" : null,
		"att24" : null,
		"att25" : null,
		"att3" : null
	},
	"ts" : NumberLong("200701113349"),
	"l" : [
		{
			"lid" : 2,
			"m" : NumberLong("200701121627"),
			"e" : NumberLong("200701121627")
		},
		{
			"lid" : 3,
			"m" : NumberLong("200701143130"),
			"e" : NumberLong("200701143130")
		},
		{
			"lid" : 4,
			"m" : NumberLong("200701143755"),
			"e" : NumberLong("200701143755")
		},
		{
			"lid" : 6,
			"m" : NumberLong("200702122711"),
			"e" : NumberLong("200702122711")
		}
	]
}]]>How to find attribute details of a user in Mongo?-  db.userDetails.find({'uid':1114411},{ 'a':1}).pretty()
{
"_id" : ObjectId("6660d50f360c380741df1493"),
"a" : {
"em" : "lakshman.k041993+91@gmail.com",
"mo" : "9901124140",
"att3" : " जॉन डो",
"att21" : "https://www.google.com/search?q=",
"att47" : 2.1,
"att10" : 124,
"att5" : "lakshman.k041993+11@gmail.com",
"att92" : "9901124140",
"att70" : "123456890asdfghjklwertyu",
"att82" :
"7GZ44tWcrF13zji95B+csQn/sjLFfUaJ65N7ipk83lzbH+OjBwiwSa3d1dwMvqc39r1liBj5wP7mbyGf3/
gV3XPHZO7/HJT9gpgK8SCkcnw9963vW7O8kx3RGrAfQ5m7ONsj6/m2ewlU9swZD0a5Mw==",
"att84" : 1234564,
"att85" : 1233.432,
"att86" : "lakshman.k041993+11@gmail.com",
"att87" : NumberLong("9901124141"),
"att88" : "https://www.google.com/search?q=",
"fk" : "lakshman.k041993+91@gmail.com"
}
}
mongos>]]>
How to find App Push Notification Sent for a specific user in Mongo? db.anonUserDetails.aggregate([{$match:{"uid":2865655}},{$project:{"ps":1}},{$unwind:"$ps"}])
{ "_id" : ObjectId("5e286a18b553f21de1f593e0"), "ps" : { "mid" : 2151, "aid" : 0, "trid" : "22428-2151-0-0-200123005959-A", "guid" : "4d510862-1f02-4db9-b991-86308258068b", "st" : "sent", "dt" : NumberLong("200123005959"), "adw" : 5, "ad" : 200123, "at" : 5959 } }
{ "_id" : ObjectId("5e286a18b553f21de1f593e0"), "ps" : { "mid" : 2152, "aid" : 0, "trid" : "22428-2152-0-0-200123010618-A", "guid" : "4d510862-1f02-4db9-b991-86308258068b", "st" : "sent", "dt" : NumberLong("200123010618"), "adw" : 5, "ad" : 200123, "at" : 10618 } }
{ "_id" : ObjectId("5e286a18b553f21de1f593e0"), "ps" : { "mid" : 2153, "aid" : 0, "trid" : "22428-2153-0-0-200123091639-A", "guid" : "4d510862-1f02-4db9-b991-86308258068b", "st" : "sent", "dt" : NumberLong("200123091639"), "adw" : 5, "ad" : 200123, "at" : 91639 } }
{ "_id" : ObjectId("5e286a18b553f21de1f593e0"), "ps" : { "mid" : 2154, "aid" : 0, "trid" : "22428-2154-0-0-200123093030-A", "guid" : "4d510862-1f02-4db9-b991-86308258068b", "st" : "sent", "dt" : NumberLong("200123093030"), "adw" : 5, "ad" : 200123, "at" : 93030 } }
{ "_id" : ObjectId("5e286a18b553f21de1f593e0"), "ps" : { "mid" : 2155, "aid" : 0, "trid" : "22428-2155-0-0-200123094016-A", "guid" : "4d510862-1f02-4db9-b991-86308258068b", "st" : "sent", "dt" : NumberLong("200123094016"), "adw" : 5, "ad" : 200123, "at" : 94016 } }
{ "_id" : ObjectId("5e286a18b553f21de1f593e0"), "ps" : { "mid" : 2156, "aid" : 0, "trid" : "22428-2156-0-0-200123094701-A", "guid" : "4d510862-1f02-4db9-b991-86308258068b", "st" : "sent", "dt" : NumberLong("200123094701"), "adw" : 5, "ad" : 200123, "at" : 94701 } }
{ "_id" : ObjectId("5e286a18b553f21de1f593e0"), "ps" : { "mid" : 2157, "aid" : 0, "trid" : "22428-2157-0-0-200123095146-A", "guid" : "4d510862-1f02-4db9-b991-86308258068b", "st" : "sent", "dt" : NumberLong("200123095146"), "adw" : 5, "ad" : 200123, "at" : 95146 } }
{ "_id" : ObjectId("5e286a18b553f21de1f593e0"), "ps" : { "mid" : 2158, "aid" : 0, "trid" : "22428-2158-0-0-200123095736-A", "guid" : "4d510862-1f02-4db9-b991-86308258068b", "st" : "sent", "dt" : NumberLong("200123095736"), "adw" : 5, "ad" : 200123, "at" : 95736 } }
{ "_id" : ObjectId("5e286a18b553f21de1f593e0"), "ps" : { "mid" : 2160, "aid" : 0, "trid" : "22428-2160-0-0-200123115927-A", "guid" : "4d510862-1f02-4db9-b991-86308258068b", "st" : "failed", "dt" : NumberLong("200123115927"), "adw" : 5, "ad" : 200123, "at" : 115927 } }
{ "_id" : ObjectId("5e286a18b553f21de1f593e0"), "ps" : { "mid" : 2160, "aid" : 0, "trid" : "22428-2160-0-0-200123115927-A", "guid" : "4d510862-1f02-4db9-b991-86308258068b", "st" : "sent", "dt" : NumberLong("200123115927"), "adw" : 5, "ad" : 200123, "at" : 115927 } }
mongos> ]]>**Environment**

**CID**

**Client Name**

**KMS ARN (Key Management Store AWS)**

**Mongo Cluster**

**Mongo cluster IP**

POD2

81831

pod2_mobile_akki

arn:aws:kms:ap-south-1:406255921449:key/68bfd19e-61c7-4835-9a4c-29e2144f2210

ency_mgpod2_81831

10.76.0.191

POD2

81851

pod2_cust_akki

arn:aws:kms:ap-south-1:406255921449:key/62c25c56-8d66-4d1c-9f20-797b753f1a32

ency_mgpod2_81851

10.76.0.191

POD2

80231

pod2_email_rashmi

arn:aws:kms:ap-south-1:406255921449:key/c69aa177-12e9-42ea-9099-7292bb95332a

ency_mgpod2_80231

10.76.0.191

PreProd

185980

preprod_cust_panel

ency_mgpp_185980

ssh 10.12.14.239

Prod-Ind

176782

`qa_manual1_custid`

 arn:aws:kms:us-east-1:282839518083:key/1fdcd482-b9a6-48a2-a16b-cdf86131dc6f

`equitas`

179973 | equitasbanklead75740 | equitasbanksmt179977 | equitasloanapppx

`equitas     equitasbanklead   :   {&quot;encryption-key-179973&quot;:&quot;Qmn4ybVhQYm7O8yStxcFSA==&quot;}    equitasbanksmt    :   {&quot;encryption-key-75740&quot;:&quot;oG4Y7YgESvmpCr4/mz7qWA==&quot;}    equitasloanapppx :   {&quot;encryption-key-179977&quot;:&quot;gwfStUW3QMiwCEk2sc2fEg==&quot;}`

---

### How to debug Cassandra DB?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3767500816)

**Environment**

**IP Address**

**Command**

POD1

192.168.54.3

Prod-EU

---

### Debug and Use ClickhouseDB

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3726409904)

How to connect ClickhouseDB on different environments?- **For Prod Europe, **SSH to [port1.netcore.co.in](http://port1.netcore.co.in/) then SSH to [jumpeuro.netcore.co.in](http://jumpeuro.netcore.co.in/). Then execute any one of the following command on jumpeuro machine

- EU IDC machine 10.106.2.119([clickhouse-01.eu-north-1.eu](http://clickhouse-01.eu-north-1.eu/).smt.internal)

---

### Debug Client Panel, PRAPP, Mongo information via MMAIL and REDIS

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3514007577)

What is the difference between MMAIL Application and MMAILDB?- For Prod USA, we have a machine  `mmail.netcore.co.in` server. This machine hosts the MMAIL Application &rarr; [http://mmail.netcore.co.in/emmbin/add_cust.pl](http://mmail.netcore.co.in/emmbin/add_cust.pl)

- We have a MMAIL DB, for Prod USA, it is hosted on `mysql-mmail-common.netcorein.com`

How to connect MMAIL DB on different environments?- For Prod USA, SSH into `mmail.netcore.co.in` server. Then execute, following command

How to identify mapping of CID to MG Cluster with Mongo Version 5?- For example, you want to identify which CID are mapped to MGAWSUS6 cluster. Then execute, following SQL command

- Sample of Output

How to identify mapping of CID to MG Cluster with Mongo Version 7?- For example, you want to identify which CID are mapped to MGAWSUS6 cluster. Then execute, following SQL command

- Sample of Output

 select * from mg_master_v2 where mgname="mgawspp";
+---------+--------------------+----------------+------------------+-------------+------------------+----------+---------------+------------+-------+--------+---------------------+
| mgname  | mghost             | readuser       | readuser_pass    | writeuser   | writeuser_pass   | rootuser | rootuser_pass | replicaset | port  | mgtype | redis_hash_key_name |
+---------+--------------------+----------------+------------------+-------------+------------------+----------+---------------+------------+-------+--------+---------------------+
| mgawspp | nc-mgpp.netcore.in | smt_api_ro     | LG0yJ2gPcmRvLTlU | smt_api     | dAx4WC4fD2c+Dx0D | admin    | NOTIMPLEmg    |            | 27017 |      4 | p1_api_mgaccess     |
| mgawspp | nc-mgpp.netcore.in | smt_com_ro     | NDt8IWsaDnhvWgJg | smt_com     | fWF9Ex5bJHErPS9K | admin    | NOTIMPLEmg    |            | 27017 |      4 | p1_com_mgaccess     |
| mgawspp | nc-mgpp.netcore.in | smt_ep_ro      | ByByLmJbDwcQWhZq | smt_ep      | NwAfDWxYNAwsLhJg | admin    | NOTIMPLEmg    |            | 27017 |      4 | p1_ep_mgaccess      |
| mgawspp | nc-mgpp.netcore.in | smt_gateway_ro | KWx7O2sGPGU8JGFg | smt_gateway | dWJ8WCk8DV0cAC95 | admin    | NOTIMPLEmg    |            | 27017 |      4 | p1_gateway_mgaccess |
| mgawspp | nc-mgpp.netcore.in | smartech_ro    | JywaU2IuDGUgXycL | smartech    | dWQYWSoKcHIwBS0B | admin    | NOTIMPLEmg    |            | 27017 |      4 | p1_others_mgaccess  |
| mgawspp | nc-mgpp.netcore.in | smt_ui_ro      | eBB6AG5fcnsqKGdi | smt_ui      | eAR4WQ4rJn4oXDJ6 | admin    | NOTIMPLEmg    |            | 27017 |      4 | p1_ui_mgaccess      |
| mgawspp | nc-mgpp.netcore.in | smt_vis_ro     | GyV7BQpaAAMdXGID | smt_vis     | FA14CQgYM11uOTgL | admin    | NOTIMPLEmg    |            | 27017 |      4 | p1_vis_mgaccess     |
+---------+--------------------+----------------+------------------+-------------+------------------+----------+---------------+------------+-------+--------+---------------------+]]>How to identify mapping of SQL and PRAPP server?- For example, you want to identify which SQL server is mapped to which prapp server. Then execute, following SQL command

- Sample of Output

How to identify panel created date, panel name for a particular MG cluster?- For example, you want to identify panel name and their creation date for MGUS6 cluster. Then execute, following SQL command

- Sample of Output

How to identify panel name from client_id?How to identify client_id name from panel?How to find InActive clients across US, India and Europe IDC- Execute the following command on MMAIL database. See the example output

 select a.clientid,client_name,idc,b.date from client_details a join client_status_details b on a.clientid=b.clientid  where a.idc='eu' and b.status='Status changed to Inactive';
+----------+-----------------+------+---------------------+
| clientid | client_name     | idc  | date                |
+----------+-----------------+------+---------------------+
|   143748 | masterdeu       | eu   | 2021-08-12 21:14:21 |
|   143748 | masterdeu       | eu   | 2021-08-12 21:15:08 |
|   127904 | euqa            | eu   | 2022-01-05 15:58:10 |
|   171752 | euauto123       | eu   | 2022-08-17 17:05:40 |
|   173690 | intncqc_eu      | eu   | 2022-09-20 17:11:53 |
|   175423 | sevenmarketscee | eu   | 2022-12-01 13:28:09 |
+----------+-----------------+------+---------------------+
6 rows in set (0.23 sec)]]>Components connecting to emm_reports Database- [https://docs.google.com/spreadsheets/d/1oK7Pe4A2vPZAGwmrg2W84nx7sgKaEx-0PeUkafe1Oos/edit#gid=0](https://docs.google.com/spreadsheets/d/1oK7Pe4A2vPZAGwmrg2W84nx7sgKaEx-0PeUkafe1Oos/edit#gid=0) 

How to connect Mongo7 on PreProd- SSH to [port3.netcore.co.in](http://port3.netcore.co.in)

- `switch smartechro`

- - Execute

---

### Debugging Redis Overflow Script

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3742073007)

- redis-overflow-util(DataSyncScriptDaemon + RedisMonitoringDaemon) - This Script will be written in goLang. It will have 2 daemon a. Redis Memory Checker. b. DataSyncDaemonredisMemoryChecker Daemon will check redis memory, If memory usage exceeds the threshold limit, it will trigger dataSyncDaemon.If memory usage is under the limit, it will stop dataSyncDaemon.

DataSyncScript SQS events signature will be:**srcRedisServer::::redisQueueName::::redisString**, here **&ldquo;::::&rdquo; **(4 colons) will be separator.

Lambda function**:** This will be written in goLang/python, input will be from eventPipe and Output will be to the redis server.

- Lambda function get triggered by eventPipe, 

- Read input request.

- Split SQS string by 

**&ldquo;::::&rdquo; **(4 colons, separator).

- Get srcRedis, redisQueueName, redisString after splitting string by separator.

**Environment and Component Name**

**Machine**

**Log Location**

POD2 (daemon - redis-overflow-handler-script)

192.168.54.21

/var/log/apps/redis-overflow-handler-script

POD2 (lambda - replay-handler)

192.168.54.24

/var/log/fluent/redis-overflow/redis-overflow

Prod-Ind (daemon - redis-overflow-handler-script)

taaredisin1.netcore.co.in

/var/log/apps/redis-overflow-handler-script

Prod-Ind (lambda - replay-handler)

twa9.netcore.co.in

/var/log/fluent/redis-overflow/redis-overflow

Prod-US (daemon - redis-overflow-handler-script)

aredis.netcore.co.in10.12.10.206

/var/log/apps/redis-overflow-handler-script

Prod-US (lambda - replay-handler)

pnaws1.netcore.co.in

/var/log/fluent/redis-overflow/redis-overflow

---

## 👥 Audience & Segmentation

### Segment Debugging Steps

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3322281997)

Segment refresh stuck on POD2
//hence the below solution solves the problem

update custom_segment_master set reachable = 3 where reachable = 0 \g
]]>Logs of related components- Vertica SmartAnalytics** **&rarr;** **/var/log/apps/smartanalytics/smartanalytics.log

Related Tables in MySQL- custom_segment_master

- custom_segmentuser

Related Collections in MongoDB- segmentUsers

Related Tables in VerticaDB- s_&lt;cid_last_digit&gt;.segmentUserDetails

---

### Debug if User is present in Segment and List for App and Web

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3416588289)



---

### How to delete Segment Lock for a Panel?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3754295299)

Below steps apply for Europe Environment. For Prod-US and Prod-India, you will need change Redis server:

**Step 1:** SSH into the Redis server:

bash**Step 2:** List the keys related to the Segment Lock:

bashSample Output:

**Step 3:** Delete each key individually by running the `DEL` command for each key:

bashRepeat the `DEL` command for each key you want to delete.

This organized set of instructions provides a clear and step-by-step process for removing the Segment Lock keys from the Redis server.

---

### AutoDiscovery Debugging Steps

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3242131457)

MySQL Query in Client Database to Identify list of Eventssql select * from papi_webactivity;

// Sample output of Events created for the particular Client
+-----+-----------------------------------------+---------------------+---------------------+---------------+----------------------------------------------------------------------------------+----------------+------------+-----------+---------+
| id  | name                                    | created_date        | updated_date        | created_by_id | description                                                                      | event_sub_type | event_type | read_only | version |
+-----+-----------------------------------------+---------------------+---------------------+---------------+----------------------------------------------------------------------------------+----------------+------------+-----------+---------+
|   1 | Page Browse                             | 2021-05-11 15:19:31 | 2021-08-24 15:16:38 |             1 | System Generated Event To Capture Page Browse                                    | System         | Web        |         0 |       1 |
|   2 | Add To Cart                             | 2021-05-11 15:19:31 | 2021-06-18 19:37:30 |             1 | System Generated Event To Capture Add To Cart Events                             | System         | Custom     |         0 |       1 |
]]>MySQL Query in Client Database to Payload Field of an Eventsql select * from papi_webactivity;

// Sample output of Payload Field for Event ID 1 (Add to Cart)
MySQL [pod2_raj21]> select * from papi_webactivitypayloadfield where webactivity_id=1;
+-----+----------------+-----------------+---------------------+---------------------+---------------+----------------+---------+----------------+
| id  | parameter_name | field_data_type | created_date        | updated_date        | created_by_id | webactivity_id | ui_flag | derived_number |
+-----+----------------+-----------------+---------------------+---------------------+---------------+----------------+---------+----------------+
|  82 | pageurl        | text            | 2021-08-24 15:16:38 | 2021-08-24 15:16:38 |             1 |              1 |       1 |              1 |
|  83 | pagetitle      | text            | 2021-08-24 15:16:38 | 2021-08-24 15:16:38 |             1 |              1 |       1 |              2 |
| 180 | action         | text            | 2021-09-16 10:42:51 | 2021-09-16 10:42:51 |             1 |              1 |       1 |              3 |
+-----+----------------+-----------------+---------------------+---------------------+---------------+----------------+---------+----------------+
3 rows in set (0.001 sec)]]>Client Activity Cache Information in Vertica DBsql select * from client_activity_cache where cid=80611 and event_id=1;
  cid  |   org_name   | derived_name | event_id |        created_time
-------+--------------+--------------+----------+----------------------------
 80611 | vt_action    | pp3_string   |        1 | 2021-09-16 10:42:57.730504
 80611 | vt_pagetitle | pp2_string   |        1 | 2021-08-24 15:16:42.680248
 80611 | vt_pageurl   | pp1_string   |        1 | 2021-08-24 15:16:42.648326
(3 rows)]]>Client Activity Payload Data in Vertica DB \x
Expanded display is on.
smartech=> select * from s_1.engagementDetails_1 where cid=80611;
-[ RECORD 1 ]+-----------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
cid          | 80611
utype        | 1
snid         | 1622523952793
uid          | 12
autoid       | 0
av           |
et           | w
lng          | 12.9174534
guid         | 8d4ff4ee-878c-4ff9-a32e-ff4603dd5d64
pts          | 76
pp2_string   |
pp2_int      |
pp2_float    |
pp2_date     |
ad           | 210601
nm           |
tx           | 1622524041594
title        | E-Cart – Web Tracking – Demo
mid          | 0
purl         | https://demo1.netcoresmartech.com/pod2_raj21/product-category/music/
srcid        | 2251
lat          | 77.6757244
npv          | 0
ctime        |
b            |
d            |
url          | https://demo1.netcoresmartech.com/pod2_raj21/
channelid    |
adat         | 210601103744
sv           |
o            |
pp1_string   |
pp1_int      |
pp1_float    |
pp1_date     |
sts          | 88
ov           |
so           |
retry        |
pp3_string   |
pp4_string   |
pp3_int      |
pp5_int      |
pp6_string   |
pp7_string   |
pp8_string   |
pp9_string   |
pp10_string  |
pp11_boolean |
------------------------------------------------------------------------------------------------]]>Structure Type

Example Payload

Status

Simple Dictionary

{'mobile': 'iphone', 'color': 'black'}

OK

Simple Array

['vivo', 'iphone', 'samsung']

Not supporting

Array Within Dictionary

{'mobiles': ['vivo', 'iphone'], 'colors': ['black', 'white']}

Not supporting

Dictionary Within Array

[{'phone': 'vivo', 'color': 'black'}, {'phone': 'iphone', 'color': 'white'}]

Not supporting

Nested Dictionary

{'mobile': {'brand': 'vivo', 'specs': {'ram': '8GB', 'storage': '128GB'}}}

OK

Array of Dictionaries

[{'item': 'earphone', 'color': 'black'}, {'item': 'cable', 'color': 'white'}]

Not supporting

Dictionary of Arrays

{'phones': ['vivo', 'iphone'], 'colors': ['black', 'white']}

OK

Mixed Nested Structure

{'electronics': {'mobiles': [{'brand': 'vivo'}, {'brand': 'iphone'}], 'accessories': ['earphones', 'charger']}}

EL EVENT DROP

Dictionary with Array of Mixed Types

{'product': 'phone', 'details': ['vivo', 25000, {'colors': ['blue', 'black']}]}

EL EVENT DROP

Complex Hybrid Structure

{'store': {'departments': [{'name': 'mobile', 'items': [{'brand': 'vivo'}]}], 'address': {'city': 'Mumbai'}}}

EL EVENT DROP

---

### Latebinding Debugging Steps

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3323265130)

ssh@192.168.54.19

tail -F /var/log/apps/vertica/verticawriter.log]]>ssh@192.168.54.22

tail -F /var/log/apps/smartanalytics/smartanalytics.log]]>ssh@192.168.53.15

cd /var/log/apps/behaviour-dashboard/behaviour

ls -larth

tail -F buffer.log]]> select * from s_1.engagementDetails_24 where cid=80231 limit 1;

  cid  | utype | snid | uid | autoid |    av    | et | lng |                 guid                 | pts |   ad   | nm | tx | title | mid | purl | srcid | lat | npv | ctime | b | d | url | channelid |     adat     |  sv   | o | sts |  ov   | so | retry | pp1_string | pp2_int | pp3_string | pp4_string | pp5_string | pp6_string 

-------+-------+------+-----+--------+----------+----+-----+--------------------------------------+-----+--------+----+----+-------+-----+------+-------+-----+-----+-------+---+---+-----+-----------+--------------+-------+---+-----+-------+----+-------+------------+---------+------------+------------+------------+------------

 80231 |     1 |      |   1 |        | 1.0.9.19 | a  |     | d3a0080a-86d5-4837-b655-f8fe616d751a |     | 210625 |    |    |       |     |      |  2362 |     |     |       |   |   |     |           | 210625141345 | 3.1.8 |   |     | 8.1.0 |    |       |            |         |            |            |            | 

(1 row)]]> select * from s_1.engagementDetails_11 where cid=80231 limit 1;

  cid  | utype |     snid      |  uid  | autoid | av | et | lng |                 guid                 | pts |   ad   | nm |      tx       |            title             | mid |                              purl                               | srcid | lat | npv |        ctime        | b  | d |                         url                          | channelid |     adat     | sv | o | sts | ov | so | retry | pp1_string | pp2_int | pp3_string | pp4_string | pp5_string | pp6_string 

-------+-------+---------------+-------+--------+----+----+-----+--------------------------------------+-----+--------+----+---------------+------------------------------+-----+-----------------------------------------------------------------+-------+-----+-----+---------------------+----+---+------------------------------------------------------+-----------+--------------+----+---+-----+----+----+-------+------------+---------+------------+------------+------------+------------

 80231 |     0 | 1633359453084 | 10087 |      0 |    | w  |   0 | d1c22b78-4829-446d-917e-88b21766de6e |  20 | 211004 |    | 1633359478132 | E-Cart – Web Tracking – Demo |   0 |   |  2249 |   0 |     | 2021-10-04 20:27:58 | 14 | 1 |   |           | 211004202827 |    | 5 |  26 |    |    |       |            |         |            |            |            | 

(1 row)]]> select * from s_80681.tmp_lateBinding limit 1;
 cid | utype | anon_uid | identified_uid | adat | ad | createddate 
-----+-------+----------+----------------+------+----+-------------
(0 rows)
]]>Query to check userGuidTokenMapping table in Vertica DB ? select * from s_80681.userGuidTokenMapping limit 1;
 status |      eventtime      | b  |    tz     |  uid   |  cid  | utype | srcid |   sv   | o |                                    
                                            token                                                                                |
 et |                 guid                 | d | gwsource 
--------+---------------------+----+-----------+--------+-------+-------+-------+--------+---+------------------------------------
---------------------------------------------------------------------------------------------------------------------------------+
----+--------------------------------------+---+----------
      1 | 2021-05-13 12:14:56 |  2 |           |  10002 | 80681 |     0 |  2366 | 0      | 8 | 6956a8131c46549214ea84824287fc38953
7ff914487844d59a89d8e2351d107                                                                                                    |
 a  | E6D250A2-4E2B-46E8-ABD8-9B6BED2395CD | 2 |   
]]>Which scripts are responsible to move tokens for anon user to identified user? sudo python /home/tomcat/vertica_writer/0/deployer/vw_cron_manager/start_cron_manager.py LATEBINDING
A UTH cron job gets generated when latebind copy comes to userGuidTokenMapping table
CRON Job -> sudo python /home/tomcat/vertica_writer/0/deployer/vw_cron_manager/start_cron_manager.py UTH]]>At what time the CRON job for scripts execute?

---

### How to Debug Bulk Contact Upoads?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3701014557)

**Application Name**

**Log Path**

ITMD

- grep &quot;jobid&quot; /var/log/itmd.log

LSWebapp

- /var/log/apps/lswebapp/lswebapp.log

ImportProcessor

- /var/log/apps/import_processor/import.log

vapi Upload Status

- /var/log/apps/vertica-api/upload-status

VerticaWriter

- /var/log/apps/vertica/verticawriter.log

- Check if **event reached VWriter** &rarr; grep 'TopicName' verticawriter.log | egrep 'PR1_BULK|PR1_UPLOAD'

- Check if **event sent to batcher** &rarr; grep 'Insert request received' verticawriter.log | grep 's_80171.tmp_userDetailsAttrs'

- Check if **data gone into tmp table** &rarr; grep 'Inserted into table' verticawriter.log | grep 's_80171.tmp_userDetailsAttrs'

- Check if **data merged into main table** &rarr; grep 'SELECTMERGE ' verticawriter.log | grep 's_80171.tmp_userDetailsAttrs'

**Note: **Change the **s_80171** to **s_YOUR_CLIENT_ID**

How ITMD comes to know if upload is done successfully in VerticaDB?- ITMD makes cURL call to following vapi

- The upload-status API performs select query in following vertica DB.

 select * from uploads.upload_job_activities where cid=174944 and jobid=1727275;
  cid   |  jobid  | state | processed_count |        createdtime         |   jobtime    
--------+---------+-------+-----------------+----------------------------+--------------
 174944 | 1727275 |     1 |               1 | 2025-01-20 12:53:02.865635 | 250112095619
(1 row)

Time: First fetch (1 row): 4.336 ms. All rows formatted: 4.375 ms
ppsmt_20201203=> select * from uploads.upload_jobs where cid=174944 and jobid=1727275;
  cid   |  jobid  | failed | upload_count |        createdtime         |   jobtime    | stream 
--------+---------+--------+--------------+----------------------------+--------------+--------
 174944 | 1727275 |      0 |            1 | 2025-01-12 09:56:22.737708 | 250112095619 |      0
 174944 | 1727275 |      0 |            2 | 2025-01-12 09:56:22.923287 | 250112095619 |      0
(2 rows)]]>- Logs Path -&gt; /var/log/apps/vertica-api/upload-status

How to monitor ongoing Bulk Contact uploads on Production?- For Prod-US and India execute this command

- You will see following kind of output

- Meaning of all the status

**Status**

**Meaning**

m2done

MySQL Contact Insertion Done. When contact uploaded in **List**

cmdone

MySQL Contact Insertion Done. When contact uploaded in **Contact Master**

vwdone

Vertica Writer Contact Insertion Done

inprocess

Insertion in MYSQL in progress

queued

Job not picked up by ITM

error

Something went wrong at multiple places. Example:

- Validation error, like first column is MobileNumber instead of EmailID. Basically first column should be primary key

- System error

vwerror

Something went wrong at Vertica Writer end

How to Upload Bulk Contact via SFTP Server?- Get the following values from client config of your panel.

- Connect to SFTP server and upload the Contact CSV file in the folder WORK. Because this is the value of $GLOBALS['WORK']

- Execute the following command on PRAPP Server. Here qa_manual1 is the panel name which is the last argument

What config needs to be added in Client Panel for FTP Bulk Contact upload- Add the below values in client config panel

Redis Key that should exist for the panel- pr1_smap

- p1_ccmap (Call is made by MGGenerator every 6 hours)

How to requeue failed bulk contact upload?- Update the SQL query. Example:

` update stm_mvc_prapp17.custom_job_master set status='queued' where jobid = 488941;`

---

### How to debug SAS Manager and goLambdaAudienceSelector (SaSv2 Lambda)?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3718578177)

- Project details for enabling SaSv2 for all channels &rarr; **Channel**

**MySQL Query**

EMAIL Broadcast

insert into phplist_config (item,value) values (&quot;sas_email_enable&quot;,1) ON DUPLICATE KEY UPDATE value = 1;

SMS Broadcast

insert into phplist_config (item,value) values (&quot;sas_sms_enable&quot;,1) ON DUPLICATE KEY UPDATE value = 1;

APN Broadcast

insert into phplist_config (`item`,`value`) values (&quot;sas_apn_enable&quot;,1) ON DUPLICATE KEY UPDATE value = 1;

BPN Broadcast

Whatsapp Broadcast

Journey

**Environment**

**Machine IP Address**

**Log Location**

POD1

POD2

192.168.53.15

cd /var/log/apps/vertica_audience/vertica_audience

- tail -F buffer.*.log

PreProd

52.3.75.180

- cd /var/log/apps/vertica_audience/vertica_audience

- tail -F buffer.*.log

Prod-US

Prod-India

Prod-EU

**Environment**

**Machine IP Address**

**Log Location**

POD1

POD2

192.168.53.15

- cd /var/log/apps/contact-reachability/reachability/

- tail -F buffer.*.log

PreProd

52.3.75.180

- cd /var/log/apps/contact-reachability/reachability/

- tail -F buffer.*.log

Prod-US

52.3.75.180

- cd /var/log/apps/contact-reachability/reachability/

- tail -F buffer.*.log

Prod-India

3.7.14.247

- cd /var/log/apps/contact-reachability/reachability/

- tail -F buffer.*.log

Prod-EU

fluentd-01.eu-north-1.eu.smt.internal

- cd /var/log/apps/contact-reachability/reachability/

- tail -F buffer.*.log

**Environment**

**Machine IP Address**

**Log Location**

POD1

POD2

192.168.54.22

- tail -F /var/log/apps/smartanalytics/smartanalytics.log

PreProd

54.156.164.236

- tail -F /var/log/apps/smartanalytics/smartanalytics.log

Prod-US

Prod-India

Prod-EU

---

### Predictive Segment Understanding Document

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3646947329)

**Commands for executing PS in POD2 server (192.168.54.24) :**

**SCRIPT RUNS AUTOMATICALLY EVERY 30 MINS ON POD2 ENVIRONMENT****command to start the predictive segments service (if the service is not up) - **sudo /opt/iac/python3_env_ps/devops_env_ps/bin/python /opt/product1/ps/predictive_segments.py

**command to execute the segment upload script - **sudo /opt/iac/python3_env_ps/devops_env_ps/bin/python /opt/product1/ps/segemnt_upload_pod.py

**Predictive Segments** :- The objective of predictive segments is to find out users who are most likely, fairly likely and least likely to purchase something in the next 7,14 or 28 days.** **The most likely, fairly likely and least likely buckets are refreshed regularly based on the KPI.

**Predictive Audience** :- The objective of predictive audience is to find out users who are going to open or click a campaign sent via email or APN. The request for Predictive Audience is ad hoc, usually 2-3 days before the scheduled campaign start date.

**Steps for Enabling PS for a client :-&nbsp;**

- Fetch the metadata dictionary for the client. The metadata will include a list of active activities and the revenue id.

- Run PS only if the number of active activities is more than 10 and revenue id is not equal to zero.

- Run the Initialize script for the client.

- Create training data for the client for all KPI&rsquo;s.

- Train the model.

**Creating Metadata dict**

- Fetch client id and client schema for the client.

- Fetch the list of activities from papi_webactivity table.

- Insert a new row into raman_ps.PREDICTIVE_SEGMENTS__model_training_table for the PS training request and set status = &lsquo;start training&rsquo;

**Create PA_Email / PA_APN training data**

- If the enablement date is 24th Nov 2022, then the PA training data end date would be 23rd Nov 2022 and training data start date would be training end date minus 90 days.

- There are always two targets in PA. In email the targets are open and click and in APN the targets are delivered and click.

- Training data example

**Training script steps**

- Fetch all rows where raman_ps.PREDICTIVE_SEGMENTS__model_training_table = &lsquo;start training&rsquo;

- Update the status of the rows to &lsquo;training started&rsquo;

- If the training request is a PS request then there will be only one target but if the training request is a PA request there will be two targets.

- Initialize the model.

The model is a stack model with optimizer as SGD, loss function as BCE.

- The input shape is (number of uids,90,number of total activities) and the target is binary.

- Prepare training data

Load the training data parquet file.

- Create a train and validation split , with the validation set containing 25% of the data.

- Preprocess the training data and create input and target variables.

- Input and target data example.

**Predictive Segments / Predictive Audience new segment request flow :-&nbsp;**

- The client creates a new PS / PA segment on the UI and hits the MLAI API.

- The MLAI API fetches the json data and stores it into a table.

- Create day data for all clients.

- Refresh the segments / execute new segment requests.

- Create segments using segment creator function and save the segments in a csv format.

- Upload the segments to the UI.

**Predictive Segments API**

- **Fetch Json data from the request call. Example of json data from request call :-&nbsp;**

PS request :- '{&quot;request_type&quot;:[1],&quot;data&quot;:{&quot;contact&quot;:1},&quot;meta_info&quot;: {&quot;duration&quot;: 28, &quot;panel_name&quot;: &quot;igpsmt&quot;, &quot;segment_type&quot;: &quot;1&quot;, &quot;child_seg&quot;: {&quot;502&quot;: 868, &quot;503&quot;: 869, &quot;504&quot;: 870}, &quot;is_adhoc_pred_seg&quot;: &quot;null&quot;, &quot;child_percentile&quot;: {&quot;502&quot;: [81, 100], &quot;503&quot;: [41, 80], &quot;504&quot;: [1, 40]}, &quot;client_id&quot;: 72994, &quot;parent_seg&quot;: 867, &quot;status&quot;: &quot;In-Progress&quot;}}'

- PS disable request :- '{&quot;request_type&quot;: [6], &quot;data&quot;: {&quot;list&quot;: [976]}, &quot;meta_info&quot;: {&quot;duration&quot;: 7, &quot;panel_name&quot;: &quot;igpsmt&quot;, &quot;segment_type&quot;: &quot;1&quot;, &quot;child_seg&quot;: {&quot;502&quot;: 672, &quot;503&quot;: 673, &quot;504&quot;: 674}, &quot;is_adhoc_pred_seg&quot;: 0, &quot;child_percentile&quot;: {&quot;502&quot;: [81, 100], &quot;503&quot;: [41, 80], &quot;504&quot;: [1, 40]}, &quot;client_id&quot;: 72994, &quot;parent_seg&quot;: 671, &quot;status&quot;: &quot;Disabled&quot;}, &quot;is_adhoc_pred_seg&quot;: 0, &quot;status&quot;: &quot;Disabled&quot;}'

- PA request :- '{&quot;request_type&quot;: [1], &quot;data&quot;: {&quot;contact&quot;: 1}, &quot;campaign_info&quot;: {&quot;subject_line&quot;: &quot;New Tealive Teassert ~ For Everyday Celebration ??&quot;, &quot;id&quot;: &quot;89&quot;, &quot;time_of_camp&quot;: &quot;2022-09-17 17:05:00&quot;, &quot;channel_type&quot;: &quot;email&quot;, &quot;segments&quot;: [30, 42]}, &quot;meta_info&quot;: {&quot;panel_name&quot;: &quot;tealive_cee&quot;, &quot;segment_type&quot;: &quot;11&quot;, &quot;child_seg&quot;: {&quot;502&quot;: 42, &quot;503&quot;: 42, &quot;504&quot;: 42}, &quot;is_adhoc_pred_seg&quot;: 1, &quot;child_percentile&quot;: {&quot;502&quot;: [81, 100], &quot;503&quot;: [41, 80], &quot;504&quot;: [1, 40]}, &quot;client_id&quot;: 156581, &quot;parent_seg&quot;: 41, &quot;status&quot;: &quot;In-Progress&quot;}, &quot;is_adhoc_pred_seg&quot;: 1, &quot;status&quot;: &quot;In-Progress&quot;}'

- Data parameter in the dictionary can be all contact , segment, list or adhoc segment. And PA requests may have competing segments and competing lists also. Note :- Adhoc segments are segments created on the fly for a particular campaign and are deleted after the campaign is over.

- There are two types of request type, request type 1 is for new ps / pa request and request type 6 is for disabling a ps request.

- Add the new segment request into vertica table raman_ps.PREDICTIVE_SEGMENTS_request&nbsp; and set status = &lsquo;queued&rsquo; for the new request.

- Return status code 200 and status = success.

- The Predictive Segment request script is an API hosted on smt1 server and on port number 5577.

**Day Data Script**

- Fetch all the clients whose status is equal to enabled in raman_ps.PREDICTIVE_SEGMENTS_enable table.

- Create day data for all the clients.

- Day data example for panel flowerchimpsmart

- Day data script is a cron job which runs everyday.

**Refresh Script**

- Select all PS segments whose refresh date is tomorrow in raman_ps.PREDICTIVE_SEGMENTS_segment_status table.

- &nbsp;Set the status of those rows to inprogress in raman_ps.PREDICTIVE_SEGMENTS_segment_status and raman_ps.PREDICTIVE_SEGMENTS_request.

- Delete old live data for that client and create new live data.

Live data example for flowerchimpsmart

**&nbsp;**

**Executor Script**

- Select all PS segments whose status is queued in raman_ps.PREDICTIVE_SEGMENTS_request table and request type = 1.

- Set the status of those rows to inprogress in raman_ps.PREDICTIVE_SEGMENTS_segment_status and raman_ps.PREDICTIVE_SEGMENTS_request.

- Delete old live data for that client and create new live data.

- Create new predictions and save the new predictions.

- Update the raman_ps.PREDICTIVE_SEGMENTS_segment_status and raman_ps.PREDICTIVE_SEGMENTS_request table , set status = probabilities_ready.

**Note:-&nbsp;**

- Live data for all the KPI&rsquo;S remains the same , thus it's created once only on any particular day. The script checks the raman_ps.PREDICTIVE_SEGMENTS_live_data&nbsp; table to see whether live data for that client has been created or not today.

- If the request is a PA request

Calculate the target event rate = benchmark event rate * 1.2 , where benchmark event rate is the average open rate of the uids in the past 90 days.

- Calculate upper limit and lower limit for the number of users to display. This upper limit and lower limit is calculated based on past data.

- Create a single bucket of users which beat the target event rate. (target average should be greater than target event rate)

- Give an upper limit and lower limit cap to the total number of users.

- Save the buckets in a result dict variable and return this variable.

- Save the final buckets in the form of csv&rsquo;s.

- Update PREDICTIVE_SEGMENTS_segment_status and set status = refresh_ready for refresh segments and segment_ready for new segment requests.

**Disable script**

- Select all rows from raman_ps.PREDICTIVE_SEGMENTS_request table where status = &lsquo;queued&rsquo; and request type = 6 and update the status of those rows to inprogress.

- Call the disable api.

- Update the status to &lsquo;disabled&rsquo;

**Note:-**

- The segment creator script and disable script run daily on smt1 server as a cron.

- These two scripts are called from smt1_ps_wrapper.py script.

**Segment Upload Script:-**

- Select all rows from PREDICTIVE_SEGMENTS_segment_status table where status is in (segment_ready, refresh_ready) and update their status to inprogress.

- For each child segment :-&nbsp;

Load the child segment data.

- Save the data in mongo and vertica.

- Update the segment count on the UI by calling papi API.

- Refresh the segment using LSWEBAPI. (This would refresh the reachable uid count on the panel and change the status of the segment on the UI from inprogress to enabled.)

- END.

---

## 🔌 API & Integration Debugging

### JSON API Debugging with sample API call for POD2

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3480682502)

**Logs Locations on POD2 environment : **

- Server - 192.168.54.24 -- tail -F /var/log/nginx/access.log

- Server - 192.168.54.24 -- tail -F /var/log/nginx/error.log

- Server - 192.168.54.24 -- tail -F /var/log/papi_nginx/papi_nginx.log

- Server - 192.168.54.25 -- tail -F /var/log/apps/jsonAPIDequeuer/api_dequeuer.log | grep -v '&lt;nil&gt;'

Related services on respective environments - 

- nginx

- api_dequeuer

**Single Add API :** curl --location -g --request POST '[http://192.168.54.24/apiv2?type=contact&amp;activity=add&amp;listid=135&amp;apikey=085164d1083970906270bb24e97a0b82&amp;data={&quot;EMAIL&quot;:&quot;test234567_singleadd@example.com&quot;,&quot;FIRST_NAME&quot;:&quot;Ho&Atilde; ng Qu&aacute;&raquo;&sup3;nh&quot;}'](http://192.168.54.24/apiv2?type=contact&amp;activity=add&amp;listid=135&amp;apikey=085164d1083970906270bb24e97a0b82&amp;data=%7B%22EMAIL%22:%22test234567_singleadd@example.com%22,%22FIRST_NAME%22:%22Ho%C3%83%20ng%20Qu%C3%A1%C2%BB%C2%B3nh%22%7D')

**Update Contact API :** curl --location -g --request POST '[http://192.168.54.24/apiv2?type=contact&amp;activity=update&amp;apikey=085164d1083970906270bb24e97a0b82&amp;data={&quot;EMAIL&quot;:&quot;"your_email@example.com"&quot;,&quot;MOBILE&quot;:8280289011,&quot;ADDRESS&quot;:&quot;Text_Update123_40%23$%^%26*()_+{}|:\&quot;&lt;&gt;?/.,';][=-+हिन्दी+Tiếng+Việt+&quot;}&amp;listid=10'](http://api.netcoresmartech.com/apiv2?type=contact&amp;activity=update&amp;apikey=d8cc93bd334664e46903db5552cceb36&amp;data=%7B%22EMAIL%22:"your_email@example.com"%22,%22MOBILE%22:8280289011,%22ADDRESS%22:%22Text_Update123_40%23$%25%5E%26*()_+%7B%7D%7C:%5C%22%3C%3E?/.,%27;%5D%5B=-+%E0%A4%B9%E0%A4%BF%E0%A4%A8%E0%A5%8D%E0%A4%A6%E0%A5%80+Ti%E1%BA%BFng+Vi%E1%BB%87t+%22%7D&amp;listid=10')

**Bulk Upload API :** curl --location --request POST '[http://192.168.54.24/apiv2?type=contact&amp;activity=bulkupload&amp;path=http://newcass2.netcore.co.in/360/Data.csv&amp;apikey=085164d1083970906270bb24e97a0b82&amp;notifyemail=sarvesh.netcore@gmail.com'](http://192.168.54.24/apiv2?type=contact&amp;activity=bulkupload&amp;path=http://newcass2.netcore.co.in/360/Data.csv&amp;apikey=085164d1083970906270bb24e97a0b82&amp;notifyemail=sarvesh.netcore@gmail.com')

**User Activity Data :** curl --location --request POST '[http://192.168.54.24/apiv2?type=export_data&amp;activity=get_user_activity_data&amp;apikey=085164d1083970906270bb24e97a0b82'](http://192.168.54.24/apiv2?type=export_data&amp;activity=get_user_activity_data&amp;apikey=085164d1083970906270bb24e97a0b82') --header 'Content-Type: text/plain' --data-raw 'data={&quot;[primary_key&quot;:&quot;"your_email@example.com"](mailto:primary_key%22:"your_email@example.com")&quot;,&quot;from_date&quot;:&quot;11032022&quot;,&quot;to_date&quot;:&quot;11032022&quot;,&quot;activity_id&quot;:&quot;1&quot;,&quot;batch_size&quot;:10,&quot;batch_number&quot;:1}'

**User Data Summary API : **curl --location --request POST '[http://192.168.54.24/apiv2?type=export_data&amp;activity=get_user_summary_data&amp;apikey=085164d1083970906270bb24e97a0b82'](http://192.168.54.24/apiv2?type=export_data&amp;activity=get_user_summary_data&amp;apikey=085164d1083970906270bb24e97a0b82') --header 'Content-Type: text/plain' --data-raw 'data= {&quot;[primary_key&quot;:&quot;"your_email@example.com"](mailto:primary_key%22:"your_email@example.com")&quot;,&quot;from_date&quot;:&quot;11032022&quot;,&quot;to_date&quot;:&quot;11032022&quot;}'

**Channel Wise User Activity API : **curl --location --request POST '[http://192.168.54.24/apiv2?type=export_data&amp;activity=get_user_channel_activity_data&amp;apikey=085164d1083970906270bb24e97a0b82'](http://192.168.54.24/apiv2?type=export_data&amp;activity=get_user_channel_activity_data&amp;apikey=085164d1083970906270bb24e97a0b82') --header 'Content-Type: text/plain' --data-raw 'data={&quot;[primary_key&quot;:&quot;"your_email@example.com"](mailto:primary_key%22:"your_email@example.com")&quot;,&quot;channel&quot;:&quot;sms&quot;,&quot;from_date&quot;:&quot;11032022&quot;,&quot;to_date&quot;:&quot;11032022&quot;}'

**JSON Upload API : **curl --location -g --request POST '[http://192.168.54.24/apiv2?activity=jsonupload&amp;type=contact&amp;primarykey=EMAIL&amp;notifyemail="your_email@example.com"&amp;listid=135&amp;apikey=085164d1083970906270bb24e97a0b82&amp;data=[{&quot;EMAIL&quot;:&quot;archanaapi_new1@gmail.com&quot;,&quot;NAME&quot;:&quot;archapi1&quot;},{&quot;EMAIL&quot;:&quot;archanaapi_new2@yahoo.com&quot;,&quot;NAME&quot;:&quot;archapi2&quot;}]'](http://192.168.54.24/apiv2?activity=jsonupload&amp;type=contact&amp;primarykey=EMAIL&amp;notifyemail="your_email@example.com"&amp;listid=135&amp;apikey=085164d1083970906270bb24e97a0b82&amp;data=%5B%7B%22EMAIL%22:%22archanaapi_new1@gmail.com%22,%22NAME%22:%22archapi1%22%7D,%7B%22EMAIL%22:%22archanaapi_new2@yahoo.com%22,%22NAME%22:%22archapi2%22%7D%5D')

**Add Attribute API : **curl --location -g --request POST '[http://192.168.54.24/apiv2?type=attribute&amp;activity=add&amp;apikey=085164d1083970906270bb24e97a0b82&amp;data=[{&quot;att_name&quot;: &quot;NAME5&quot;,&quot;att_type&quot;: &quot;textline&quot;,&quot;defaultval&quot;: &quot;CUSTOMER&quot;}]'](http://192.168.54.24/apiv2?type=attribute&amp;activity=add&amp;apikey=085164d1083970906270bb24e97a0b82&amp;data=%5B%7B%22att_name%22:%20%22NAME5%22,%22att_type%22:%20%22textline%22,%22defaultval%22:%20%22CUSTOMER%22%7D%5D')

---

### Debug APIv1v2v3v4

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/4048158761)

`https://jsonapi.eu-north-1.eu.netcoresmartech.com`CEE API Documentation &rarr; [https://developer.netcorecloud.com/docs/smartech-apis](https://developer.netcorecloud.com/docs/smartech-apis) 

**API Version**

**Also Called As**

**Powered by Git Repos**

**PreProd IP**

**Log Path**

**Document**

v1

S2S Api offline ApiBatchAct Api

- [https://gitlab.com/netcorecloud/cee/OfflineApi](https://gitlab.com/netcorecloud/cee/OfflineApi) 

- [https://gitlab.com/netcorecloud/cee/OfflineActivityLambdaFunction](https://gitlab.com/netcorecloud/cee/OfflineActivityLambdaFunction) 

`offline api 10.12.3.240`Batchact api : `10.12.3.240`S2S: Need to Find 

tailf /var/log/apps/offline/offline.logS2S - Need to Find

[https://docs.google.com/document/d/1Bz7KABoqblkzozGIevKFywcrePI37533dUg_YegGo9o/edit?tab=t.0#heading=h.18b81ge9lyyf](https://docs.google.com/document/d/1Bz7KABoqblkzozGIevKFywcrePI37533dUg_YegGo9o/edit?tab=t.0#heading=h.18b81ge9lyyf) 

v2

Contacts API/ JSON API

- [https://gitlab.com/netcorecloud/cee/JsonApi](https://gitlab.com/netcorecloud/cee/JsonApi) 

- [https://gitlab.com/netcorecloud/cee/jsonAPIDequeuer](https://gitlab.com/netcorecloud/cee/jsonAPIDequeuer) 

Nginx &rarr; 10.12.3.125 

Dequeur &rarr; 10.12.3.124

Nginx -&gt;

`/var/log/papi_nginx/papi_nginx.log`

Dequeur -&gt;

`/net/tmp/api_dequeuer_log/api_dequeuer.log`

v2

GDPR API

- APIv2 folder under smartech-api

Logs come on PRAPP sever

Example: `prt2-preprod.netcorein.com`

/net/tmp/log/jsonapi/log-2024-11-16.php

v3

V3 API/APN API

- [https://gitlab.com/netcorecloud/cee/goapiv3](https://gitlab.com/netcorecloud/cee/goapiv3) 

`10.12.13.162`

`/var/log/apps/goapiv3/goapiv3.log `

v4

**Environment**

**API Domain**

POD2

[sitenv06.netcore.co.in](http://sitenv06.netcore.co.in/apiv2?type=erasure_user_data&amp;activity=request_erasure_data&amp;apikey=42ccd19f36b826dda9d3e1300c69725d)

PreProd

api-preprod.netcoresmartech.com

Prod-US

api.netcoresmartech.com

Prod-Ind

apiin.netcoresmartech.com

Prod-EU

`jsonapi.eu-north-1.eu.netcoresmartech.com`

---

### S2S Activity API (Server to Server Activity API) Debugging

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3481174017)

The activity API should support both types of data upload - 

- Single Data 

- Bulk Data (up to limit of 1000) 

S2S API will support the following features - 

- &ldquo;Array&rdquo; in the payload. 

- Auto Discovery.

- Accepting data with app_id (passing website id or app id)

- Error data should be displayed in the error console.

- Accepting bulk data. So customers can pass single or bulk in one API call.

## Use Case / Why we need this- Easy to use API for customer&rsquo;s developer to ingest activity data to Smartech. 

- Accepting bulk and single activity data from one API call.

- Enhanced feature of allowing &ldquo;Array&rdquo; support and Auto Discovery.

- Single API to accept real-time activity and old activity

## User Interview &amp; FeedbackDeepesh - ActivationSachin - ActivationMradul/Yogesh P - CSM

Q. What kind of request you get from customerA. Both, adding activity real-time via API as the customer has not integrated our JS and SDK and also historical because the customer is fresh and would like to dump old data. 

Q. What are the most use case for getting these API callA. Ideally, the customer has not integrated the SDK and JS and want to start journey asap. So passing these activity data enables to start the journey.

Q. Why customer give data realtimeA. Because there is no JS and SDK integration

Q. Why customer give historical dataA. Old data they want to dump, some of the customers only use SMS/email so with activity data they do segmentation and plan the further campaign strategy

Q. What kind of payload request you have seen? A. Single, Bulk, With array &amp; without array.Q. What is the current problem you have seen in the system w.r.t. bulk and single activity API?A. w.r.t. batch activity API 

- Works from local - not able to run from the postman or other RESTful API tool

- the file should be on the same server

- we don&rsquo;t get to know about any error

- any information as what is happening, success gives me OK.

## NFR- There will be a limit for activity count per call. It should be 1000. 

- The API should validate the JSON format and give a response accordingly.

- The API will be in sync mode and will give all relevant success and error messages. The processing of activity will be offline in the backend.

- The limit of processing the activity should be between 10K to 15K per minute.

- If the API is called multiple times then it should be queued and processed as per the process. 

- There will be NO LIMIT on activity count. 

## API ScopeThe API scope will be as follows - 

**Base EndPoint:**For US: [https://api2.netcoresmartech.com](https://api2.netcoresmartech.com/v1/activity/upload)For India: [https://apiin2.netcoresmartech.com](https://apiin2.netcoresmartech.com/v1/activity/upload) **Host:**https:// (NO HTTP)

**EndPoint**/v1/activity/upload  (Module/Action)

**Header:**Content-Type: application/json

**Method:**POST

**Authorization:**Bearer API_KEY

**Body:**Body parameters are JSON Payload. 

**Parameter**

**Description**

**Type**

**Required**

**Example**

activity_name

This is the name of the activity

String

Yes

Purchase

asset_id

Pass website_id or app_id for which the activity is mapped 

string

Yes

timestamp

This is the timestamp of the event that occurred.The date should be passed with ISO - 8601

- If Z is passed means its time in UTC so the same will be converted in IST to store in db and at the time of displaying the activity on UI, stored time will be converted in panel time zone 

- If no timezone or offset is passed then we consider it as IST and store as it is in db. And at the time of displaying the activity on UI, stored time will be converted in panel time zone

- If specific timezone or offset is passed, then it will be first converted into GMT and then GMT value in IST to store in db and at the time of displaying the activity on UI, stored time will be converted in panel time zone 

date-time

Yes

2020-09-01T08:57:55.677Z

anonid

This is the unique ID of the contact. This is mandatory if identity is not passed.

This will be used in case of anon user. 

String

No

identity

This is the identifying information of the contact. It can be email/mobile/customer-id of the logged-in contact. This is the same as the primary key in your Smartech Panel. Passing this parameter is mandatory for identified contacts.

String/Integer

No

activity_source

This is a source of activity

String 

The value should be either (&ldquo;web&rdquo;, &ldquo;app&rdquo;)

No

activity_params

This is activity payload data

Object

Yes

Sample JSON. 

json**API Response:****Success:**

json",
    "failed_count": "[
        {"status":"fail", "code":, "error":, "record":},
        {"status":"fail", "code":, "error":, "record":},"
    ]        
}]]>**API ERROR Codes **Errors are returned using standard HTTP error code syntax. The response body is always in JSON.

**ERROR Code**

**Error**

400

Bad Request | Missing Parameter - Activity Name

401

Unauthorized | Invalid API Key

405

Method Not Allowed

408

Request Time Out

500

Internal Server Error

TODO - I want to add custom error codes too. Please suggest the approach.

Some of the error can be - 

- Activity Name Mandatory

- Activity JSON structure invalid

- CTC is not in timestamp format

- Activity is beyond the limit

## Competition**Competition**

**URL**

CT

[https://developer.clevertap.com/docs/upload-events-api](https://developer.clevertap.com/docs/upload-events-api)

ME

[https://docs.moengage.com/docs/data-import-apis#section-user-events-information](https://docs.moengage.com/docs/data-import-apis#section-user-events-information)

WE

[https://docs.webengage.com/docs/rest-api-tracking-events](https://docs.webengage.com/docs/rest-api-tracking-events)

Airship

[https://docs.airship.com/api/ua/#operation/api/custom-events/post](https://docs.airship.com/api/ua/#operation/api/custom-events/post)

## Point to NOTE (IMP)**Points**

**Answer**

What about the retention policy

Events should be retained based on the retention policy. 

How much data to accept w.r.t. time

based on retention policy

how much data to accept - volume

- Based on the payload size

- The limit is 1000 activity in one API call.

Time-sensitive data for automation

The events which are within 24 hrs should be considered for automation

MAU Calculation

MAU will be calculated w.r.t. current month calculation

irrespective of CTS date/time

**POD2 Example of S2S API :**

**Live Example of S2S API : **

**S2S API Workflow on POD2 :**

- API key should be set in p1_capikey on following server's redisfluent server's (192.168.53.15) redis ports -- 6379, 6380, 6381, 6382Query - hget p1_capikey 085164d1083970906270bb24e97a0b82Result - &quot;80251-10000&quot;Query - hget &quot;p1_app_map_v2&quot; dfb18f05fc6e56cc2567df540c69baccresult - &quot;80251,sitenv07,sitenv08,mgsit1,us1,1,1,1,0,1,2406,01,1,15,,0&quot;

- Invoke lambda by hitting API - logs location - fluent server 192.168.53.15 /va/log/fluent/twlogs/ -- buffer file

- Data will go into fluent redis 6382 in key PR1_S2SOFFLINEACT

- JavaRedisBridge source - 192.168.53.15:6782  Dest Redis - 192.168.54.19 redis (key PR1_S2SOFFLINEACT)

- ELRB source redis - 192.168.54.19  Dest Redis - 192.168.54.26 (key PR1_S2SOFFLINEACT)

- EL will consume from 54.26 (PR1_OFFLINEACT) and process it further

- If time used is before 24 hours, it will not put event in LPREDIS so journeys will not trigger.

---

### Activity_PAPI Debug Steps

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3993600020)

How to debug if dequer of Activity_PAPI is stuck?- Connect to Aredis

- Check if there is a LOCK for LOWQ and HIGHQ

Example of LOWQ

-  keys PR1_LOW_DQ_LOCK_PIDS*
1) "PR1_LOW_DQ_LOCK_PIDS_activity-papi-preprod-mysql8"]]>- Example of HIGHQ

-  keys *PR1_HIGH_DQ_LOCK_PIDS*
1) "PR1_HIGH_DQ_LOCK_PIDS_activity-papi-preprod-mysql8"  ]]>
- Delete the key from Redis

- Restart the activity papi dequer using any of the below method

`Shell script to restart`

- Deploy any branch of activity_papi

---

### How to Debug Shopify Integration with CEE?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3701801036)

**Environment**

**QA Panel**

**Shopify Website**

**Shopify Store Password**

**Shopify Admin Username**

**Shopify Admin Password**

POD2

NA

NA

NA

NA

NA

Preprod

ajcodebase_email(Email as primary key)

pre_mob_shop(Mobile as primary key)

pre_custid_shop(Custid as primary key )

[http://preprod-email-shopnew.myshopify.com](http://preprod-email-shopnew.myshopify.com) --Email as primary

[http://preprod-mobile-new.myshopify.com](http://preprod-mobile-new.myshopify.com) --Mobile as primary

[http://pre-cust-shop.myshopify.com/](http://pre-cust-shop.myshopify.com/) --custid primay key 

Netcore123

Netcore123

Netcore123

["your_email@example.com"](mailto:"your_email@example.com")

["your_email@example.com"](mailto:"your_email@example.com")

["your_email@example.com"](mailto:"your_email@example.com")

Netcore@0618

Netcore@0618

Netcore@0618

Prod-US

pr5_qa(Email as primary key panel)

prod_mpk(Mobile as primary key)

intnc_qa_sdk_manual(custid as primary key

[http://prod-email-shop-test.myshopify.com/](http://prod-email-shop-test.myshopify.com/) -Email primary key

[https://prod-mobile-shop-test.myshopify.com/](https://prod-mobile-shop-test.myshopify.com/) --Mobile primary key

[https://prod-custid-shop-test.myshopify.com/](https://prod-custid-shop-test.myshopify.com/) ---Cust id primary key

Netcore123

Netcore123

Netcore123

["your_email@example.com"](mailto:"your_email@example.com")

["your_email@example.com"](mailto:"your_email@example.com")

["your_email@example.com"](mailto:"your_email@example.com")

Netcore@0618

Netcore@0618

Netcore@0618

Prod-India

NA

NA

NA

NA

NA

Prod-EU

NA

NA

NA

NA

NA

Preprod

Account ID 936954454931	Username : nagabhushan.hiremathpassword : M3Sz5K!4`iV*FI1FY

[shopify-hook-dev-historical_checkout_sync_cron](https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/shopify-hook-dev-historical_checkout_sync_cron)[shopify-hook-dev-historical_contact_sync_cron](https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/shopify-hook-dev-historical_contact_sync_cron)[shopify-hook-dev-historical_order_sync_cron](https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/shopify-hook-dev-historical_order_sync_cron)[shopify-hook-dev](https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/shopify-hook-dev)[shopify-hook-dev-sync_checkout_cron](https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/shopify-hook-dev-sync_checkout_cron)

shopify-hook-dev-historical_checkout_sync_cron[https://ap-south-1.console.aws.amazon.com/cloudwatch/home?region=ap-south-1#logsV2:log-groups/log-group/$252Faws$252Flambda$252Fshopify-hook-dev](https://ap-south-1.console.aws.amazon.com/cloudwatch/home?region=ap-south-1#logsV2:log-groups/log-group/$252Faws$252Flambda$252Fshopify-hook-dev)

Prod-US 

Account ID 936954454931	Username : nagabhushan.hiremathpassword : M3Sz5K!4`iV*FI1FY

shopify-hook-prodshopify-hook-prod-historical_checkout_sync_cronshopify-hook-prod-historical_contact_sync_cronshopify-hook-prod-historical_order_sync_cron

Prod-India

Prod-EU

Customer Name

Documents

Link

Flowerchimp

Business Requirement Document

NOT AVAILABLE

Use Case Document

[https://docs.google.com/document/d/1_unh2SoCnwPOWxJvsW9uyuuwrnjuQYzHS8on6a4hnB0/edit](https://docs.google.com/document/d/1_unh2SoCnwPOWxJvsW9uyuuwrnjuQYzHS8on6a4hnB0/edit) 

Implementation Document

[https://docs.google.com/spreadsheets/d/1JNFsZIC7cjEyVfcWOLQp__n3LustIYya7g3rciN7ups/edit#gid=2026196987](https://docs.google.com/spreadsheets/d/1JNFsZIC7cjEyVfcWOLQp__n3LustIYya7g3rciN7ups/edit#gid=2026196987) 

Test Case Document

[https://docs.google.com/spreadsheets/d/1MhSWawkuftwhFgSODPZqICa7K1E4uUQF4qohBp6CMIM/edit#gid=0](https://docs.google.com/spreadsheets/d/1MhSWawkuftwhFgSODPZqICa7K1E4uUQF4qohBp6CMIM/edit#gid=0) 

Data Required by Netcore

Revenue Dash - Price, Quantity (Qty) etc are being captured properlyBPN Delivery - BPN Clicked, BPN Dismissed to be sent out from client browser to server.Payload Parameters used for personalization

Airtel Payment Bank

Business Requirement Document

[https://drive.google.com/file/d/1MhpJaH-fCJ_CSGwoR-teuslTWO7FZ_6n/view?usp=sharing](https://drive.google.com/file/d/1MhpJaH-fCJ_CSGwoR-teuslTWO7FZ_6n/view?usp=sharing) 

Use Case Document

NOT AVAILABLE

Implementation Document

NOT AVAILABLE

Test Case Document

NOT AVAILABLE

[https://partners.shopify.com/](https://partners.shopify.com/) Username : ["your_email@example.com"](mailto:"your_email@example.com")password : Netcore@0618Click on stores

---

### How to Debug Magento Integration with CEE?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3701735465)

Preprod

Prod US

mag_pr1

[demo4.netcoresmartech.com/](http://demo4.netcoresmartech.com/)

admin

admin@12345

107.23.81.88

magento

Magent@3$%5

**Component name**

**Git repository **

Magento plugin

[https://bitbucket.org/magento-plugin/magentov2.4/branch/master_phase2](https://bitbucket.org/magento-plugin/magentov2.4/branch/master_phase2) 

[https://docs.google.com/spreadsheets/d/1p4PU5TnNx6SCYzjrBCLaOGVIoe_xGQ8AiVgBih5AtY8/edit#gid=2146963724](https://docs.google.com/spreadsheets/d/1p4PU5TnNx6SCYzjrBCLaOGVIoe_xGQ8AiVgBih5AtY8/edit#gid=2146963724) [https://docs.google.com/document/d/1uIhLrHbbVX5fHaQxfBjxl7B_TG81VhUhKCjNAA64QJs/edit#heading=h.tjaucpggy9jw](https://docs.google.com/document/d/1uIhLrHbbVX5fHaQxfBjxl7B_TG81VhUhKCjNAA64QJs/edit#heading=h.tjaucpggy9jw) [https://drive.google.com/drive/folders/134-OyaC84_36KefE-3V-e2gKW_404j2y](https://drive.google.com/drive/folders/134-OyaC84_36KefE-3V-e2gKW_404j2y)  Product overview

1.1 navigate to /var/www- create a new folder mkdir &lt;&lt;demo#&gt;&gt; i think upto demo-3 to demo-10 u can use here

- cd to demo#

- ../composer.phar create-project --repository-url=[https://repo.magento.com/](https://repo.magento.com/)  magento/project-community-edition .(If asked for Sudo warning type &quot;Y&quot; or &quot;Yes&quot; as per prompt and enter&quot;)

- Run the below commands find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} + find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} + chown -R :apache . # Centos chmod u+x bin/magento chmod 775 pub/

- Log in to mysql as root mysql -h 127.0.0.1 -u root -p6.1 enter password &quot;Magento@123&quot;

- create a new database demo#   create database demo#

- Navigate back to Server root

- Run the following command with updated to db-name and base-urlMake any other changes like timezone or whatever as per conveninence***copy from line 22 -38 and run***(just change demo# and db-name) bin/magento setup:install \ --base-url=[https://demo11.netcoresmartech.com](https://demo11.netcoresmartech.com) \ --db-host=127.0.0.1 \ --db-name=magento_23 \ --db-user=root \ --db-password=Magento@123 \ --admin-firstname=admin \ --admin-lastname=admin \ [--admin-email=admin@admin.com](#) \ --admin-user=admin \ --admin-password=admin123 \ --language=en_US \ --currency=USD \ --timezone=America/Chicago \ --use-rewrites=1 \ --use-secure=1 \ --backend-frontname=admin

This will create a shop with [https://demo#.netcoremsartech.com](https://demo#.netcoremsartech.com) and admin [https://demo#.netcoremsartech.com/admin](https://demo#.netcoremsartech.com/admin)

- Immediately run the below commandsbin/magento module:disable Magento_TwoFactorAuthbin/magento cache:flush

- cp /etc/httpd/conf.d/demo3.netcoresmartech.com_ssl.conf /etc/httpd/conf.d/demo9.netcoresmartech.com_ssl.conf

- vim into the newly created conf file and change all demo3 references to demo# ref

- navigate back to new sites server root /var/www/demo#sudo systemctl restart httpd.service

- run the below commandsudo php -d memory_limit=-1 bin/magento sampledata:deployPublic Key(username): 759db2e12b44a1a3de7c46fc4c1336e7Private Key(pwd): 810f18d6d2e28c97c5356381f18c8b3b

bin/magento setup:upgrade

- Now you can navigate to ur site

- Install Netcore plugin (install plugin via ftp)

steps to install plugin via ftp

- always disable plugin , before install new plugin packagebin/magento module:disable Netcore_Cee

- after disable , run below cmdssudo php -d memory_limit=-1 bin/magento setup:upgradesudo php -d memory_limit=-1 bin/magento setup:di:compile	sudo php -d memory_limit=-1 bin/magento cache:cleansudo php -d memory_limit=-1 bin/magento cache:flush 	sudo php -d memory_limit=-1 bin/magento setup:static-content:deploy -f

- - then go to cd app/code/rm -rf Netcore/

- Transfer plugin file from local to /tmp/

- Goto /tmp/cp -r Netcore/ /var/www/demo#/app/code/Netcore/

- Goto /var/www/demo#/bin/magento module:enable Netcore_Cee

- after enable , run below cmdssudo php -d memory_limit=-1 bin/magento setup:upgradesudo php -d memory_limit=-1 bin/magento setup:di:compilesudo php -d memory_limit=-1 bin/magento cache:cleansudo php -d memory_limit=-1 bin/magento cache:flushsudo php -d memory_limit=-1 bin/magento setup:static-content:deploy -f

After installing plugin , install cron for new demo siteRun below command under /var/www/demo#/bin/magento cron:install

verify the croncrontab -l

- Always disable plugin , before install new plugin packagenavigate to /var/www/demo#/

- bin/magento module:disable Netcore_Cee

- after disable , run below commandsphp bin/magento setup:upgradephp bin/magento setup:di:compilephp bin/magento setup:static-content:deploy -fphp bin/magento cache:cleanphp bin/magento cache:flush

- then go to cd app/code/rm -rf Netcore/

- Transfer plugin file from local to /tmp/

- Goto /tmp/cp -r Netcore/ /var/www/demo#/app/code/Netcore/

- Goto /var/www/demo#/bin/magento module:enable Netcore_Cee

- after enable , run below cmdssudo php -d memory_limit=-1 bin/magento setup:upgradesudo php -d memory_limit=-1 bin/magento setup:di:compilesudo php -d memory_limit=-1 bin/magento cache:cleansudo php -d memory_limit=-1 bin/magento cache:flushsudo php -d memory_limit=-1 bin/magento setup:static-content:deploy -f

user :magento -pwd :  Magent@3$%5Navigate to demo# folder( # ---&gt; demo4 , demo5 , demo7 )/var/www/demo#/var/log**Environment**

**Magento webhook **

Pod2

[https://alb2-dev0.netcoresmartech.com/dispatchngn_magento](https://alb2-dev0.netcoresmartech.com/dispatchngn_magento)

Preprod

[https://preprodpn.netcoresmartech.com/dispatchngn_magento](https://preprodpn.netcoresmartech.com/dispatchngn_magento)

Prod US

[https://twa.netcoresmartech.com/dispatchngn_magento](https://twa.netcoresmartech.com/dispatchngn_magento)

Prod IND

[https://twa.netcoresmartech.com/dispatchngntin_magento](https://twa.netcoresmartech.com/dispatchngntin_magento)

Prod EU

[https://events-eu.netcoresmartech.com/dispatchngnt_magento](https://events-eu.netcoresmartech.com/dispatchngnt_magento)

---

### FB custom audience Credentials and Steps

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3386048561)

- Navigate to Assets-&gt;Social-&gt;FB custom audience

- We have to add FB AD manager account.

For this we need to create FB business account -&gt; https://developers.facebook.com/apps/405633426295465/fb-login/settings/?business_id=226989664581568creds: [maxwell.netcore@gmail.com](mailto:maxwell.netcore@gmail.com) || Netcore@12345

- Here we need to make sure that in emmnetcore app -&gt; Facebook login -&gt; settings -&gt; Valid Oauth Uri's ([https://pr1.netcoresmartech.com/qa_manual1/admin/index.php/assets/custom_audience)](https://pr1.netcoresmartech.com/qa_manual1/admin/index.php/assets/custom_audience)) this should be added.

- After adding the URI, we can add the FB AD manager account in FB custom audience in our panel.

- Now navigate to Campaign-&gt;Audience Targeting.

- Now create a custom audience with any segments.

- Environment and Panel details on which FB custom audience is working

- If the user limit get exceeded by 500 user then  there is a validation added from Facebook we need to delete the user from custom_audience[https://adsmanager.facebook.com/adsmanager/audiences?act=322020856650783&amp;business_id=807541129906576&amp;tool=AUDIENCES&amp;nav_entry_point=ads_ecosystem_navigation_menu&amp;nav_source=ads_manager&amp;date=2022-05-28_2022-06-27%2Clast_30d](https://adsmanager.facebook.com/adsmanager/audiences?act=322020856650783&amp;business_id=807541129906576&amp;tool=AUDIENCES&amp;nav_entry_point=ads_ecosystem_navigation_menu&amp;nav_source=ads_manager&amp;date=2022-05-28_2022-06-27%2Clast_30d)

**Environment**

**Panel**

Production

qa_manual1

POD2

pod2_email_sarvesh3

---

### Debugging FTP or SFTP feature

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3636264969)

**Environment**

**POD2**

**US and India**

**Europe**

Server

192.168.54.25

terra1.netcore.co.in

76.8.51.34

Username

sftptesting

sftppstest

sftpeuqa

Password

Sftp!@#$%5tgb

Eisee8habo3O

Gdvxw$SBs22q

---

### File Upload on Web Server for Testing

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3970957381)

[root@192.168.50.166](mailto:root@192.168.50.166)qwerasdf/opt/product1/papi/netcoresdk-demo-files[https://pnstage.netcore.co.in/netcoresdk-demo-files/video/demo-video-3.mp4](https://pnstage.netcore.co.in/netcoresdk-demo-files/video/demo-video-3.mp4)

---

### How to Debug Webhook Functionality?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3768614913)

How to configure webhook for Journey and broadcast (Email and SMS)?- For Journey, adding the website in Assets section is enough. No additional activity is required.

- For broadcast (Email and SMS) following activity is required:

- In the Client MySQL DB, under webhooks_master table, ensure the value of is_bc=1 and bc_type=ES,EO,EC,EU,SS,SC for your webhook url. Sharing a sample:

 select * from webhooks_master limit 1 \G
*************************** 1. row ***************************
                id: 1
              name: qa_manual1
               url: https://manual1.requestcatcher.com/
            method: post
          username: NULL
          password: NULL
        alertemail: 
    alertfrequency: 0
         reprocess: NULL
            status: 0
status_update_time: 2023-08-09 15:38:21
        created_by: 1
      created_date: 2020-07-07 15:57:20
     modified_date: 2023-10-17 11:01:37
             is_bc: 1
           bc_type: ES,EO,EC,EU,SS,SC
]]>- Set Redis Key value in AREDIS for your client &rarr; **hset PR1_WEBHOOK_BC &lt;CLIENTID&gt;. **Sharing a sample

- Verify the redis value has been set using HGET command. Sharing a sample

**Environment**

**Machine IP**

**Location**

POD2

`192.168.54.24`

/var/log/Webhook.log

PreProd

10.12.3.143

/var/log/Webhook.log

Prod-US

`papi2.netcore.co.in`

/var/log/Webhook.log

Prod-Ind

tpapiin2.netcore.co.in

/var/log/Webhook.log

Prod-EU

webhook.eu-north-1.eu.smt.internal

/var/log/Webhook.log

Note: For Broadcast Sent events (Email and SMS) Webhook logs will come in audit_log.log. For Open and Click events (Email and SMS), logs will come in /var/log/Webhook.log

---

## ⚡ Lambda & Serverless

### Lambda Debugging Steps

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3358490903)



---

### How to Debug Event Logger?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3680043061)

Training Videos of EL Components- How Event Ingestion works in EL &rarr; [https://drive.google.com/drive/u/0/folders/15yEJ1-CO-SaBn0r2u63QXnBTGshr4f-5](https://drive.google.com/drive/u/0/folders/15yEJ1-CO-SaBn0r2u63QXnBTGshr4f-5) 

- What is Fast Bus and Slow Bus in Event Logger &rarr; [https://drive.google.com/drive/u/0/folders/1wB9e515s_M1rwEOsmT2h3__FpeReyAY2](https://drive.google.com/drive/u/0/folders/1wB9e515s_M1rwEOsmT2h3__FpeReyAY2) 

- Kafka Topic Understanding &rarr; [https://drive.google.com/drive/u/0/folders/1oh_EAULL9NLfSdZ47jJuR8FxvhZonB-7](https://drive.google.com/drive/u/0/folders/1oh_EAULL9NLfSdZ47jJuR8FxvhZonB-7)

- What is Event Logger Redis Bridge (ELRB) &rarr; [https://drive.google.com/drive/u/0/folders/162aDaK4Y0XOe6BgF0UV4CMjtUi4BCzQm](https://drive.google.com/drive/u/0/folders/162aDaK4Y0XOe6BgF0UV4CMjtUi4BCzQm) 

- What is Kafka Mongo Writer (KMW) &rarr; [https://drive.google.com/drive/u/0/folders/1KH2v-ycH_cE_i5VO2AvTmKanxV85gPOQ](https://drive.google.com/drive/u/0/folders/1KH2v-ycH_cE_i5VO2AvTmKanxV85gPOQ) 

- How Offline Activity API works &rarr; [https://drive.google.com/drive/u/0/folders/1jQvfcK9J6xmipTFucOqRaGeOn2_X75Wn](https://drive.google.com/drive/u/0/folders/1jQvfcK9J6xmipTFucOqRaGeOn2_X75Wn) 

- What are the APIs exposed by EL &rarr; [https://drive.google.com/drive/u/0/folders/1GbyxJzUrkKYcSLNzkHx9R7CukV5zY4Xu](https://drive.google.com/drive/u/0/folders/1GbyxJzUrkKYcSLNzkHx9R7CukV5zY4Xu) 

- Event Deletion &rarr; [https://drive.google.com/drive/u/0/folders/1NtZO_aN9hMcEYQZ5XjZOfXaos5bu8blG](https://drive.google.com/drive/u/0/folders/1NtZO_aN9hMcEYQZ5XjZOfXaos5bu8blG) 

- KMW Lag Monitoring &rarr; [https://drive.google.com/drive/u/0/folders/1xk5uun3j8okBT_O8w2WfB60PW-yqHmFB](https://drive.google.com/drive/u/0/folders/1xk5uun3j8okBT_O8w2WfB60PW-yqHmFB) 

- App Inbox Troubleshooting &rarr; [https://drive.google.com/drive/u/0/folders/1kc6el3dX1snH3x0v6S_g1-CNejM7g0dy](https://drive.google.com/drive/u/0/folders/1kc6el3dX1snH3x0v6S_g1-CNejM7g0dy) 

- Common migration scripts for PEDS &rarr; [https://docs.google.com/spreadsheets/d/1aMclIFoRixsnV_0EntYOydR31zYEJZ3cwNV__rB2Pk0/edit#gid=0](https://docs.google.com/spreadsheets/d/1aMclIFoRixsnV_0EntYOydR31zYEJZ3cwNV__rB2Pk0/edit#gid=0) 

Details of EL instances on Production- [https://docs.google.com/spreadsheets/d/1BXnPpdwQ6FSfe3_jqYlbiSx87MYjcjJSFucP9A0I20Y/edit#gid=763847661](https://docs.google.com/spreadsheets/d/1BXnPpdwQ6FSfe3_jqYlbiSx87MYjcjJSFucP9A0I20Y/edit#gid=763847661)

---

### How to debug Conversion or Raman Scheduler?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3844702421)

How conversion is displayed on UI?- raman_scheduler component is responsible to process and put conversion data in a dedicated table in vertica DB.

- For Production environment:

raman_scheduler (Normal based) CRON runs every 2 hours on Prod-US and every 1 hour on Prod-IND and PROD-EU.

- raman_scheduler (Priority based) CRON runs every 15 mins on all IDC. NOTE: Only Prod-US has this priority based raman scheduler enabled, remaining IDC&rsquo;s have it disabled.

- For POD2:

raman_scheduler (Normal based) CRON runs every 15 mins.

- raman_scheduler (Priority based) CRON runs every 5 mins.

Details of raman_scheduler on ProdUS- Machine IP: 44.206.174.206

- Log Location: /var/log/apps/raman_scheduler/raman_scheduler.log

- Table data

select * from s_1.campaign_semisummary where cid=107311 order by click_time desc limit 10;

- Following log line is printed when CRON is started for a particular client. Example client 107311 

  - time taken to insert the semi summary data for the clie
nt  107311  with size of insert queries : 24 167078   ]]>
- Following log line is printed when CRON is finished for a particular client. Example client 107311

  - Processing of summary data is end for th
e clientid : 114437  time taken to complete is :240295]]>

---

### SRE Automated Tasks

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3771891747)

How to increase attribute limit for a specific client?- Add the following value in the client config file

---

### Debugging EventLoggerRedisBridge (ELRB) and JavaRedisBridge (JRB)

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3728179211)



---

## 📊 Analytics & Reporting

### Debug Conversion and Revenue for IA2.0

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3694985234)

Check if conversion rules are present in VerticaDB?- Login to VerticaDB

- Perform Select Query on Below Table. Change the cid (client_id), mid (message_id), and aid (automation_id)

- 
How does vertica_summary_api GETS the Conversion and Revenue data from VerticaDB for campaigns performed till YESTERDAY?- Data will come from below table

-  select * from s_raman.broadcast_summary where cid=107311 and msg_id=28579;
 sent_date  | activity_date |  cid   | channel | msg_id | srcid | map_id | value | created_at
------------+---------------+--------+---------+--------+-------+--------+-------+------------
 2023-03-15 | 2023-03-15    | 107311 |       4 |  28579 |  1533 |     51 |     1 | 2023-03-16
 2023-03-15 | 2023-03-15    | 107311 |       4 |  28579 |  1533 |     52 |  1000 | 2023-03-16
(2 rows)]]>
How does vertica_summary_api GETS the Conversion and Revenue data from VerticaDB for campaigns performed for TODAY or a SPECIFIC DATE?- Query to get Conversion and Revenue data for TODAY is generated on the fly by vertica_summary_api component. The steps to find the query are following:

The query will change, For POD2, ssh on 198.168.53.15 and go this path: /var/log/apps/vertica_summary_api/vertica_summary_api

- Search the Select Query which has been executed by vertica_summary_api for required MID. Then execute the query in VerticaDB and observe the results. See the example below

-  SELECT a_mid, channel, sum(rev_param) AS total_revenue, count(1) AS total_transactions, count(Distinct uid || '|' || utype) AS unique_transactions 
FROM( SELECT uid, a_mid, split_part(a_trid, '-', 5) AS s_date, c_date, p_date, rev_param, channel, srcid  ,utype, guid  FROM ( SELECT e.uid AS uid, e.utype as utype, e.guid as guid,e.pp6_float AS rev_param, e.adat AS p_date, last_value(u.et) over(partition BY e.uid, e.adat, e.tx, e.pp6_float ORDER BY u.adat rows BETWEEN unbounded preceding AND unbounded following) AS channel, e.srcid AS srcid, last_value(u.mid) over(partition BY e.uid, e.adat, e.tx, e.pp6_float ORDER BY u.adat rows BETWEEN unbounded preceding AND unbounded following) AS a_mid, last_value(u.trid) over(partition BY e.uid, e.adat, e.tx, e.pp6_float ORDER BY u.adat rows BETWEEN unbounded preceding AND unbounded following) AS a_trid, last_value(u.adat) over(partition BY e.uid, e.adat, e.tx, e.pp6_float ORDER BY u.adat rows BETWEEN unbounded preceding AND unbounded following) AS c_date FROM s_1.engagementdetails_2 e JOIN ( SELECT cid, '5' AS et, uid, mid, trid, adat, utype, srcid , guid FROM s_1.userdetails_w_wpcopen WHERE cid = 86061 AND (aid=0 OR aid is null)  and mid=23 and (adat between 230313122524 AND 230313140855)  ) u ON ( e.uid = u.uid AND e.cid = u.cid AND e.cid = 86061 AND ( e.adat BETWEEN 230313122524 AND 230313140855)    and e.utype = u.utype and e.srcid = u.srcid and e.guid = u.guid  AND timestampdiff(second, to_timestamp(u.adat, 'YYMMDDHHMISS'), to_timestamp(e.adat, 'YYMMDDHHMISS')) BETWEEN 0 AND 1800)) AS attributed GROUP BY uid, a_mid, s_date, rev_param, p_date, c_date, channel, srcid  ,utype, guid ) attributed  WHERE  a_mid = 23  AND  channel = 5 
GROUP BY a_mid, channel ;]]>- 
Check if Activities are being processed by Event Logger?- Check for the EventID, Userid, Guid in Event Logger logs

For example, If you have created conversion on Mobile Push Notification Click, then check the logs for NGN_APPACT (For SDK2) or PR1_APP_TRACK (For SDK3)

- For example, If you have created conversion on Browser Push Notification Click, then check the logs for PR1_WEBPUSHACT

Check the select query performed by vertica_summary_api- User should have entry in below tables 

 select uid,utype,srcid,guid,adat from s_1.userdetails_w_wpcopen where  mid=23 and cid=86061;
  uid  | utype | srcid |                 guid                 |     adat     
-------+-------+-------+--------------------------------------+--------------
 10007 |     0 |  2543 | fc1f667a-4bd6-46cb-a5d0-3276b389cc6a | 230313122534
(1 row)]]>-  select uid,utype,srcid,guid,adat from s_1.engagementdetails_2 where cid=86061 and adat BETWEEN 230313122524 AND 230313140855;
  uid  | utype | srcid |                 guid                 |     adat     
-------+-------+-------+--------------------------------------+--------------
 10008 |     0 |  2543 | c3099f49-f3a3-4d3d-935f-9327e7c4e44d | 230313122641
 10008 |     0 |  2543 | c3099f49-f3a3-4d3d-935f-9327e7c4e44d | 230313123054
     8 |     1 |  2543 | 9be39614-330a-4835-8bf6-1acfbc437506 | 230313124359
     8 |     1 |  2543 | 9be39614-330a-4835-8bf6-1acfbc437506 | 230313130727
     8 |     1 |  2543 | 9be39614-330a-4835-8bf6-1acfbc437506 | 230313130801]]>

---

### Debugging Download Reports (Direct Download, LocalSTM, RemoteSTM)

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3695476830)

- XHR calls that has been used in reports automation &rarr; [https://docs.google.com/spreadsheets/d/1ZWp-4rmPrTCe6X_vvwrEQJjcN89svY5O7xlXea1YbzM/edit#gid=1977990419](https://docs.google.com/spreadsheets/d/1ZWp-4rmPrTCe6X_vvwrEQJjcN89svY5O7xlXea1YbzM/edit#gid=1977990419) 

How to debug RemorteSTM?- RemoteSTM Job details are stored in this MySQLDB &rarr; **remote_stm**

How to view custom_job_details and custom_job_master in single view from remote_stm DB?- Execute below query and replace the jobid

 SELECT cj.jobid, cj.job_data, cj.filename, cjm.clientid, cjm.taskid, cjm.entered, cjm.started, cjm.ended, cjm.priority, cjm.job_source, cjm.status, cjm.progress FROM custom_job_details AS c
j JOIN custom_job_master AS cjm ON cj.jobid = cjm.jobid WHERE cj.jobid = '161750' \G                                                                                                                                     
*************************** 1. row ***************************                                                                                                                                                           
     jobid: 161750                                                                                                                                                                                                       
  job_data: {"client_id":"22428","clientid":"22428","task":"BpnSummaryDetailedReport","database_name":"ajcodebase_email","INPUT":{"CallbackUrl":"","NotifyEmail":"varsha.salunkhe87@gmail.com"},"CONSTANT":{"ApiKey":"af1
c37b79cfbd7471ea7666ef0109337"},"CRITERIA":{"Action":"BpnSummaryDetailedReport"},"notification_email":"varsha.salunkhe87@gmail.com","source":"SingleBPNCampDetailedReportDownload","report_type":"detailed","CUSTOM":{"cl
ient_id":"22428","client_name":"ajcodebase_email","adminid":1,"contact_no":"","encrypted_password":"AVxfUBouFX0=","cust_input":{"msgids":"4263","attDet":null,"actDet":null,"devDet":null,"campDet":null,"contactType":"c
m","channel":"bpn"},"activeTimezone":"Asia\/Calcutta","method":"email","ftp_id":"","ftp_path":""},"webpushmessage_id":4263}                                                                                              
  filename: 161750-Campaign_ID-4263_Bpn_Detailed_20230814-YWpjb2RlYmFzZV9lbWFpbF8xNjkyMDE4NTQy.zip                                                                                                                       
  clientid: 22428                                                                                                                                                                                                        
    taskid: 39                                                                                                                                                                                                           
   entered: 2023-08-14 18:38:23                                                                                                                                                                                          
   started: 2023-08-14 18:39:01                                                                                                                                                                                          
     ended: 2023-08-14 18:39:17                                                                                                                                                                                          
  priority: 0                                                                                                                                                                                                            
job_source: APP                                                                                                                                                                                                          
    status: done                                                                                                                                                                                                         
  progress: NULL                                                                                                                                                                                                         
1 row in set (0.00 sec)                                                                                                                                                                                                  
                                                                                                                                                                                                                         
MySQL [remote_stm_preprod]>   ]]>**Environment**

**Machine IP**

POD2

 ]]>SIT

PreProd

 use remote_stm_preprod;]]>Prod-US

 use remote_stm_aws;]]>Prod-India

 use remote_stm;

or 

[smartechro@jump-server-private ~]$ ssh 10.15.1.68
[smartechro@tprappin1r-prod-ind ~]$ mysql -h `cat /etc/database_host` -uroot -A remote_stm]]>Prod-EU

 ]]>What are the different tables used by RemoteSTM DB?- For queued jobs

 select * from custom_job_master order by jobid desc limit 5;
+-------+----------+--------+---------------------+---------------------+---------------------+----------+------------+---------------+
| jobid | clientid | taskid | entered             | started             | ended               | priority | job_source | status        |
+-------+----------+--------+---------------------+---------------------+---------------------+----------+------------+---------------+
| 15827 |    80231 |     23 | 2022-07-25 16:13:08 | 2022-07-25 16:14:02 | 2022-07-25 16:14:04 |        0 | APP        | done          |
| 15826 |    80231 |     23 | 2022-07-22 19:20:36 | 2022-07-22 21:56:02 | 2022-07-22 21:56:04 |        0 | APP        | done          |
| 15825 |    80231 |     23 | 2022-07-22 19:18:42 | 2022-07-22 19:19:02 | 2022-07-22 21:55:29 |        0 | APP        | error_wrapper |
| 15824 |    80551 |     23 | 2022-07-21 12:05:17 | 2022-07-21 12:07:01 | 2022-07-21 12:07:56 |        0 | APP        | done          |
| 15823 |    80551 |     23 | 2022-07-21 12:05:17 | NULL                | 2022-07-21 12:06:41 |        0 | APP        | done          |
+-------+----------+--------+---------------------+---------------------+---------------------+----------+------------+---------------+]]>
- Table for job details

 select * from custom_job_details where jobid=15827\G
*************************** 1. row ***************************
   jobid: 15827
job_data: {"task":"Automationdetaileddownload","database_name":"pod2_email_rashmi","INPUT":{"automation_id":0,"AttrId":"att4,att6,att8,att14,email,mobile,att24,att2,att3,att5,att7,att9,att21,att22,att23","StartDate":null,"EndDate":null,"ListEntered":"","UserEntered":"","ModDate":"","NotifyEmail":[""your_email@example.com""],"CallbackUrl":"","TaskPriority":0,"superuser":1,"database_name":"pod2_email_rashmi","additionalAmpField":"type,submission"},"CONSTANT":{"ApiKey":"a5abf4b3aecc1cc6bf21ad5da823d980"},"CRITERIA":{"Action":"Automationdetaileddownload"},"notification_email":[""your_email@example.com""],"CUSTOM":{"type":"automation","activity":"AutomationDetailedData","contact_no":"8281904975","client_name":"pod2_email_rashmi","adminid":1,"resource":"APP","AutoStartDate":null,"AutoEndDate":null,"activeTimezone":"Asia\/Calcutta","sel_journey":"1738,1737,1736","encrypted_password":"A1tzG1A7BAg=","method":"email","ftp_id":"","ftp_path":"","contactType":"cm"},"client_id":"80231"}
1 row in set (0.002 sec)]]>
- For recurring jobs

 select * from scheduled_reports order by id desc limit 1\G
*************************** 1. row ***************************
            id: 189
      clientid: 80231
        server: sitenv07
          name: Download AMP report
    start_date: 2022-07-25
      end_date: 2022-07-27
download_count: 0
        status: active
   report_type: detailed
        method: email
     frequency: d
frequency_type: 
      job_data: {"scheduler":1,"task":"Automationdetaileddownload","database_name":"pod2_email_rashmi","INPUT":{"automation_id":0,"AttrId":"att4,att6,att8,att14","StartDate":null,"EndDate":null,"ListEntered":"","UserEntered":"","ModDate":"","NotifyEmail":""your_email@example.com"","CallbackUrl":"","TaskPriority":0,"superuser":1,"database_name":"pod2_email_rashmi","additionalAmpField":"type,submission"},"CONSTANT":{"ApiKey":"a5abf4b3aecc1cc6bf21ad5da823d980"},"CRITERIA":{"Action":"Automationdetaileddownload"},"notification_email":""your_email@example.com"","activeTimezone":"Asia\/Calcutta","CUSTOM":{"type":"automation","activity":"Automationdetaileddownload","client_name":"pod2_email_rashmi","adminid":"","resource":"APP","encrypted_password":"A1tzG1A7BAg=","contact_no":"8281904975","AutoStartDate":null,"AutoEndDate":null,"activeTimezone":"Asia\/Calcutta","sel_journey":null,"method":"email","ftp_id":"","ftp_path":"","contactType":"cm"}}
       entered: 2022-07-25 16:41:04
  elapsed_days: 1
 campaign_type: automation
1 row in set (0.001 sec)]]>

How to Create the job from scheduler table?- Execute the following command on PRAPP Server

- Once the job, Execute the following command on PRAPP Server

How to execute STM jobs manually?- Execute the following command on PRAPP Server with valid JobID

- 
How to view logs of RemoteSTM?- logs will be generated date wise in stmlog folder of panel's APP Server. It means if panel is on PRAPP5 server, STM logs will be generated on PRAPP5 server only

- On the PRAPP Server, go to **/net/tmp/stmlog_jobwise **then grep for the ClientID_JobID

- For example, if ClientID is 80231 and JobID is 15829, then the logs will be available in this file &rarr;  **/net/tmp/stmlog/stm_201603141541361.log.2022-04-10**

For PreProd

- CRON detail /net/tmp/stm_wrapper_log/remote_stm_wrapper.log.2023-07-14

- lock file location /opt/stm_wrapper_preprod

- Jobwise detail /net/tmp/stmlog_jobwise_preprod

- CSV are generated with job_JOBID /net/tmp/job_workfiles/

- Reports ZIP file emailed to customer /net/tmp/jobs_preprod

How to retrieve password of Report Scheduler?**First Approach - To resend the password via panel's Account &rarr; Configuration**

- Go to panels account - config section and click on Resend password

- You will be able to see password inside the audit log. Audit log is located on the application server at following location - /net/tmp/audit_log/&lt;panel_name&gt;/audit_log.log

- Relevant audit log example is given below.

**Second approach - To decrypt the password by taking encrypted values from relevant database**

- Login to panel&rsquo;s MySQL DB.

- Get encrypted value of report_password from phplist_config table. Example is given below.

 select value from phplist_config where item='report_password';
+--------------+
| value        |
+--------------+
| CFFFeQlmBl8= |
+--------------+
1 row in set (0.00 sec)]]>- Get encrypted value of XOR mask from phplist_config table. Example is given below.

 select value from phplist_config where item='xormask';
+------------------------------------------------------------------+
| value                                                            |
+------------------------------------------------------------------+
| 90700743eb24360a2a9b946e5febeef65d5a1977e121fe9bddc4edc87ec8c46e |
+------------------------------------------------------------------+
1 row in set (0.00 sec)]]>- Go to [https://onecompiler.com/php](https://onecompiler.com/php). Replace your values in below code and run the code.

';
$XORmask         = '';
$str             = '';
for($i=0, $len=strlen($encoded); $i]]>- You will get report scheduler password after running the code

How to download reports from clients panel on your emailID?- SSH to [smtreports.netcore.co.in](http://smtreports.netcore.co.in) for US IDC

- Connect to remote_stm database `mysql -u root remote_stm`

- If you want to download reports of JobID 416 then first check the status using the following Select query

 select * from custom_job_details where jobid=416 \G;
*************************** 1. row ***************************
   jobid: 416
job_data: {"task":"CustEmailReportdownload","database_name":"tomorrowmakers","INPUT":{"CallbackUrl":"","NotifyEmail":[""your_email@example.com""]},"CONSTANT":{"ApiKey":"7f0d4b8435beb26d4d29f6e5744838fe"},"CRITERIA":{"Action":"CustEmailReportdownload"},"notification_email":[""your_email@example.com""],"CUSTOM":{"client_name":"tomorrowmakers","adminid":"1","contact_no":"8879726331","encrypted_password":"E39tCQsXfX0=","cust_input":{"msgids":"6","attDet":"mobile,email","actDet":"Bounce Type,Bounce Reason,Open time,Open Day,Latest Link clicked,No. of clicks,First Click,Last Click,Unsub reason,Abuse Reason","devDet":"Device,OS,Browser","campDet":"Message ID,Campaign Name,Tag,Subject,Sent Date,Status,List ID,List Names,Seg ID,Segment Names","contactType":"cm"},"activeTimezone":"Asia/Calcutta","method":"email","ftp_id":"","ftp_path":""}}
filename: NULL
1 row in set (0.00 sec)]]>- See the value of **job_data** and **NotifyEmail** value is **"your_email@example.com"**. Now if you want to download this report on **"your_email@example.com"** then change the value inside **job_data** and run the update query on **remote_stm**

- Now Queue the JOBID 416 by executing the following query

- RemoteSTM process 40 types of Reports. Using the above steps you can download all the 40 types of report. Just ensure you are updating the correct values in **job_data**

 select * from custom_task_map order by taskid;
+--------+---------------------------------+------------+
| taskid | taskdetails                     | pause_flag |
+--------+---------------------------------+------------+
|      1 | Massdelete                      |          0 |
|      2 | Massblacklist                   |          0 |
|      3 | Dataupload                      |          0 |
|      4 | Dataexport                      |          0 |
|      5 | Mostactive                      |          0 |
|      6 | Reportdownload                  |          0 |
|      7 | BatchUpload                     |          0 |
|      8 | Schedule                        |          0 |
|      9 | Smsreportdownload               |          0 |
|     10 | Automationemailreportdownload   |          0 |
|     11 | Automationsummarydownload       |          0 |
|     15 | Copyautomation                  |          0 |
|     16 | Automationvoicereportdownload   |          0 |
|     17 | Pushreportdownload              |          0 |
|     18 | AddDelDomain                    |          0 |
|     20 | Webpushreportdownload           |          0 |
|     21 | Browserpushreportdownload       |          0 |
|     22 | CustEmailReportdownload         |          0 |
|     23 | Automationdetaileddownload      |          0 |
|     24 | EmailBroadcastSummaryDownload   |          0 |
|     25 | SMSBroadcastSummaryDownload     |          0 |
|     26 | SMSBroadcastDetailedDownload    |          0 |
|     28 | WhatsappReportdownload          |          0 |
|     29 | PushSummaryReport               |          0 |
|     30 | PushCustomDetailedReport        |          0 |
|     31 | APNTriggerDetailedDownload      |          0 |
|     32 | APNTriggerSummaryDownload       |          0 |
|     33 | UnifiedSummaryReport            |          0 |
|     34 | WebAppEventDataBuilderUpload    |          0 |
|     35 | inappDetailedReportDownload     |          0 |
|     36 | inAppMessageReport              |          0 |
|     37 | SMSWiseSummaryReport            |          0 |
|     38 | webMessageSummaryReportDownload |          0 |
|     39 | BpnSummaryDetailedReport        |          0 |
|     40 | OtchetAMPResponsCSVDownload     |          0 |
+--------+---------------------------------+------------+]]>Jenkins Job to trigger remoteSTM on PreProd- From Jenkins UI : [http://192.168.2.136:8080/job/remotestm-download-reports/](http://192.168.2.136:8080/job/remotestm-download-reports/)

- From CLI : `curl -X POST --user mukeshtiwari:110b931bfef1655bc59aa33856e58e88c7 http://192.168.2.136:8080/job/remotestm-download-reports/buildWithParameters?jobID=159744`

How to get JobID status via RemoteSTM?- POD1

- PreProd

- Prod

How to get the filename for a JobID once the Job is marked as completed?- POD1

- PreProd

- Prod

How to find time taken for a reports job to complete?- Execute the below SQL query. Replace DATE(entered) = '2024-02-22' with desired date.

 SELECT jobid, clientid, taskid, entered, started, ended, TIMESTAMPDIFF(MINUTE, entered, ended) AS time_taken_in_mins FROM custom_job_master WHERE  DATE(entered) = '2024-02-22' ORDER BY  time_taken_in_mins DESC;
+--------+----------+--------+---------------------+---------------------+---------------------+------------+
| jobid  | clientid | taskid | entered             | started             | ended               | time_taken |
+--------+----------+--------+---------------------+---------------------+---------------------+------------+
| 193994 |   176259 |     26 | 2024-02-22 00:16:02 | 2024-02-22 00:25:02 | 2024-02-22 00:26:02 |         10 |
| 194004 |   176259 |     26 | 2024-02-22 00:25:10 | 2024-02-22 00:34:01 | 2024-02-22 00:35:04 |          9 |
| 194014 |   176259 |     26 | 2024-02-22 00:34:17 | 2024-02-22 00:43:02 | 2024-02-22 00:44:04 |          9 |
| 194200 |   176259 |     35 | 2024-02-22 10:37:02 | 2024-02-22 10:45:01 | 2024-02-22 10:46:08 |          9 |
| 193998 |   176259 |     33 | 2024-02-22 00:20:06 | 2024-02-22 00:29:01 | 2024-02-22 00:29:04 |          8 |
| 194000 |   176259 |     35 | 2024-02-22 00:22:16 | 2024-02-22 00:30:01 | 2024-02-22 00:31:06 |          8 |]]>How to raise JIRA for report download failure?- Ensure following items are mentioned

JobID: JobID that you get in real time download that you see in Jenkins. Example: 

- TextCompare: Add the textcompare URL that you get in Jenkins. Example: [https://www.textcompare.org/csv/compare/?id=65dd711c5a9d594f1da3d746](https://www.textcompare.org/csv/compare/?id=65dd711c5a9d594f1da3d746) 

- Conclusion: Mention your conclusion on what you see in the textcompare website. Example: Row Number 1 Column B value has changed

- Sample Jira ticket: SMT-39454f35b0ece-c90d-3aa4-bc31-5387dc866132System Jira

---

### Debug MAU (Monthly Active Users)

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3729096730)

What components are involved?- MAUCalc &rarr; [https://gitlab.com/netcorecloud/cee/MAUCalc](https://gitlab.com/netcorecloud/cee/MAUCalc). This is responsible to pick data from Kafka and Insert into MMAIL MySQL DB

- channelwise_mau.php &rarr; [https://gitlab.com/netcorecloud/monitoring_scripts/sre-scripts/-/blob/master/channelwise_mau.php](https://gitlab.com/netcorecloud/monitoring_scripts/sre-scripts/-/blob/master/channelwise_mau.php). This is responsible to perform select query and show the data on UI

- More details are available in &rarr; PEDS-6940f35b0ece-c90d-3aa4-bc31-5387dc866132System Jira 

How CRON runs- `15 0 * * * /home/tomcat/mau_sync.sh &gt;&gt; /var/log/apps/mau/sync_mau.log.$(date +\%Y-\%m-\%d)`

---

### How to debug Event Consumption tracking?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3766124637)

How to execute Event Consumption tracking manually- PreProd &rarr; /opt/product1/events_consumption_tracking/target/main -config=/opt/product1/events_consumption_tracking/deployer/config/events_consumption_tracking.yaml 22428

Log Path and Machine details of Event Consumption trackingLog Path &rarr; `/var/log/apps/events_consumption_tracking`

---

### Debugging MLAI on CEE Smartech

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3733192737)

- SMARTECH UI MLAI Configs &rarr; [https://docs.google.com/spreadsheets/d/1aReGBS6jf07Bo_4bm8Jhgt6KLve3WR4Cbf2sIXtfiPE/edit#gid=0](https://docs.google.com/spreadsheets/d/1aReGBS6jf07Bo_4bm8Jhgt6KLve3WR4Cbf2sIXtfiPE/edit#gid=0) 

 - Data required is from the start of T-120 days. Example, today is 6Oct&rsquo;23 then data should be present in the table from 6June&rsquo;23

- Tables Used by MLAI Component:

**For Daily Active User count (DAU):**

engagementDetails_21 (FIRST_APP_LAUNCHED)

- engagementDetails_20 (APP_LAUNCHED)

- userDetails_e_c (Email Click)

- userDetails_s_sc (Sms Click)

- engagementDetails_1 (PAGE_BROWSE)

- engagementDetails_41 (INAPP_SHOWN)

- engagementDetails_31 (ONSITE_SHOWN)

**For calculating Revenue:**

- engagementDetails_{rev_id}

**For Preferred Hour:**

- The same data as STO

**For Preferred Channel:**

- userDetails_e_s (Email Sent)

- userDetails_s_sd (Sms Delivered)

- userDetails_w_wpdl (Web Push Delivered)

**For Revenue Volume by Campaign:**

- userDetails_e_s (Email Sent)

- userDetails_s_sd (Sms Delivered)

- userDetails_p_pdl (AppPush Delivered)

- userDetails_w_wpdl (Web Push Delivered)

- engagementDetails_41 (INAPP_SHOWN)

- engagementDetails_31 (ONSITE_SHOWN)

**Note:** These tables' MID should be present in engagementDetails_{revenue_activity}.

**For Get Tag-Wise Revenue Volume:**

- AUTOTAG_DE_FINAL_phplist_messagetag_mlai

- userDetails_e_s (Email Sent)

- userDetails_p_pdl (AppPush Delivered)

- userDetails_w_wpdl (Web Push Delivered)

**Note:** MID and UID will be present in both.

**For Get Volume:**

- userDetails_e_s (Email Sent)

- userDetails_s_ss (Sms Sent)

- userDetails_p_pssent (AppPush Sent)

- userDetails_w_wpssent (Web Push Sent)

- engagementDetails_31 (ONSITE_SHOWN)

**For Get Open Rate:**

- All open rates from the open and sent tables

**For Get Click Rate:**

- All click rates from the click and sent tables

**For Get No. of Automation:**

- Count of AID

- Get No. of Campaign

---

## 🔐 Security & Access Management

### How to debug secure ip login?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3766845443)



---

### Debug RBAC

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/4131160112)

**Environment**

**Database Name**

**Machine IP**

POD2

ncs_db_pod2

PreProd

ncs_db_preprod

Prod-US and India, EU

ncs_db_prod

---

### How to retrieve Report Password for panel

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3746988055)

- Login to MySQL DB and Select your panel&rsquo;s database

- Run Following commands to get encrypted password and XOR mask.

- Go to [https://onecompiler.com/php](https://onecompiler.com/php)

- Replace your password, XOR mask and run PHP file to get actual password.

]]>

---

### Debugging of demo panel functionality

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3687907355)

For access to the demo panel on local we  have two configuration file server_config.phph and config.prdev_email_jr.php(client config file) , you need to change in the server_config.php onlyPath &mdash;&gt; smartech/process/config/server_config.php

$GLOBALS['demopanel'] = 1; // 1 for demo panel enable and 0 for disable//If value is 0 that means  all data will get from database//If it is 1 then static data will be show on UI

For access on pod2 you need to change the client config file which is different for  all panels. Ex. pod2_email_reethu3  is the panel name  so confile  file will  be  config.pod2_email_reethu3.php. Demo panel enable  and disable will be  done by QA only.

- Static value add or changes -&gt;Path -&gt; smartech/admin/application/config/demoIn the demo folder we have 4 files where you can add or change  the values.Basically we pass  the value as  json or array format to the $static_data[&lsquo;key_name&rsquo; ]  which is returned by their related api.1. analytics_dashboard_demopanel_data.php2. audience_demopanel_data.php3. campaign_demopanel_data.php4. detailed_master_list.php

- Path-&gt; smartech/admin/application/models/Campaigns_api_demo_model.phpWhen we  enable  demo panel **campaigns_api.php, Public_apis, Sms_campaign.php,public_apis.php etc&hellip;  controller redirect to Campaigns_api_demo_model.php**Condition is managed in their  constructor like this

if($this-&gt;commoninit-&gt;is_demopanel_enable() == 1) {           $this-&gt;load-&gt;model('campaigns_api_demo_model');           $result = $this-&gt;campaigns_api_demo_model-&gt;get_demo_data();           if(!empty($result)){               echo $result;               exit;           }       }

 All controller&rsquo;s function is handled by the **apis_list function** in Campaigns_api_demo_model.php. **Ex. is given below  by image -**

If value is  **direct** means we don&rsquo;t need to create any function which is given as a key name. Function will get  the response directly from the respective files which are available in the demo folder.Path -&gt; smartech/admin/application/config/demoEx.-&gt; get_all_contacts_count function using as  key name in campaign_demopanel_data.php

- If  value is a method , the  function(which is given as a key name) will return the response. Functions have to be created in the respective dummy model. Ex. &rarr;  email_campaign is the main controller/class which is taking data from the database. But in the data demo panel case  we  create a dummy model. So, **apis_list function **point all classes to dummy model in **get_demo_data function**  of campaigns_api_demo_model.php

&rarr;email_campaign_dummy_model.php will call all the functions which are given in the apis_list** function. **If the function is not available in the dummy model then the main controller will return data value.- We need to mention or create a function in a dummy model which is needed on UI to show data as static. 

**New creation file **

- Create   model file with existing name + &ldquo;dummy&rdquo; as suffix  in -  admin/application/models/demo/Ex- &gt; campaign_api_model.php is an existing  model name which is taking data from a database but we need to show data dummy data as static.  So I will create a file  with the dummy suffix campaign_api_dummy_model.php under &ldquo;admin/application/models/demo/&rdquo;.

- This dummy model will call in Campaigns_api_demo_model.php by get_demo_data function.

- get_demo_data function will take all functions of this dummy model by api_list function().

---

## 🏗️ Infrastructure & DevOps

### Debugging steps for ProdToPreProd

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3652452361)

**Environment**

**URL**

POD2

- http://192.168.54.25/prod-to-preprod/?operation=refresh_journey_cache&amp;clientid=80171&amp;idc=pod

- http://192.168.54.25/prod-to-preprod/?operation=refresh_all_journey_cache&amp;clientid=80171&amp;idc=pod

- http://192.168.54.25/prod-to-preprod/?operation=refresh_cache&amp;clientid=80171&amp;idc=pod

- http://192.168.54.25/prod-to-preprod/?operation=refreshALLFrequencyData&amp;clientid=80171&amp;idc=pod

- http://192.168.54.25/prod-to-preprod/?operation=blacklist_users_by_email&amp;clientid=80171&amp;idc=pod&amp;action=ad

- http://192.168.54.25/prod-to-preprod/?operation=refresh_tags&amp;clientid=80171&amp;idc=pod

- http://192.168.54.25/prod-to-preprod/?operation=move_to_prod&amp;clientid=80171&amp;idc=pod

- http://192.168.54.25/prod-to-preprod/?operation=move_to_pre_prod&amp;clientid=80171&amp;idc=pod

ProdUS

- http://ceaf3.netcore.co.in/prod_to_preprod/?operation=refresh_journey_cache&amp;clientid=80171&amp;idc=us

- http://ceaf3.netcore.co.in/prod_to_preprod/?operation=refresh_all_journey_cache&amp;clientid=80171&amp;idc=us

- http://ceaf3.netcore.co.in/prod_to_preprod/?operation=refresh_cache&amp;clientid=80171&amp;idc=us

- http://ceaf3.netcore.co.in/prod_to_preprod/?operation=refreshALLFrequencyData&amp;clientid=80171&amp;idc=us

- http://ceaf3.netcore.co.in/prod_to_preprod/?operation=blacklist_users_by_email&amp;clientid=80171&amp;idc=pod&amp;action=us

- http://ceaf3.netcore.co.in/prod_to_preprod/?operation=refresh_tags&amp;clientid=80171&amp;idc=us

- http://ceaf3.netcore.co.in/prod_to_preprod/?operation=move_to_prod&amp;clientid=80171&amp;idc=us

- http://ceaf3.netcore.co.in/prod_to_preprod/?operation=move_to_pre_prod&amp;clientid=80171&amp;idc=us

ProdIndia

- http://tceafin3.netcore.co.in/prod_to_preprod/?operation=refresh_journey_cache&amp;clientid=80171&amp;idc=in

- http://tceafin3.netcore.co.in/prod_to_preprod/?operation=refresh_all_journey_cache&amp;clientid=80171&amp;idc=[=](http://tceafin3.netcore.co.in/prod_to_preprod/?operation=refresh_journey_cache&amp;clientid=80171&amp;idc=pod)in

- http://tceafin3.netcore.co.in/prod_to_preprod/?operation=refresh_cache&amp;clientid=80171&amp;idc=in

- http://tceafin3.netcore.co.in/prod_to_preprod/?operation=refreshALLFrequencyData&amp;clientid=80171&amp;idc=in

- http://tceafin3.netcore.co.in/prod_to_preprod/?operation=blacklist_users_by_email&amp;clientid=80171&amp;idc=pod&amp;action=

- http://tceafin3.netcore.co.in/prod_to_preprod/?operation=refresh_tags&amp;clientid=80171&amp;idc=in

- http://tceafin3.netcore.co.in/prod_to_preprod/?operation=move_to_prod&amp;clientid=80171&amp;idc=in

- http://tceafin3.netcore.co.in/prod_to_preprod/?operation=move_to_pre_prod&amp;clientid=80171&amp;idc=in

ProdEurope

- http://prod-to-preprod.eu-north-1.eu.smt.internal/prod-to-preprod/index.php?operation=refresh_journey_cache&amp;clientid=80171&amp;idc=eu

- http://prod-to-preprod.eu-north-1.eu.smt.internal/prod-to-preprod/index.php?operation=refresh_all_journey_cache&amp;clientid=80171&amp;idc=eu

- http://prod-to-preprod.eu-north-1.eu.smt.internal/prod-to-preprod/index.php?operation=refresh_cache&amp;clientid=80171&amp;idc=eu

- http://prod-to-preprod.eu-north-1.eu.smt.internal/prod-to-preprod/index.php?operation=refreshALLFrequencyData&amp;clientid=80171&amp;idc=eu

- http://prod-to-preprod.eu-north-1.eu.smt.internal/prod-to-preprod/index.php?operation=blacklist_users_by_email&amp;clientid=80171&amp;idc=pod&amp;action=eu

---

### How to debug Datamasking?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3837984878)

Explain what this how-to article is for. For example, you might write an article to teach people at your company how to set up a corporate email account or file an expense report.

How to remove Datamasking from panel for admin user- Execute following command on ClientDB MySQL

---

### Database Backup and Restore Information

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3778510857)

**Environment**

**Database Type**

**Backup Machine IP**

**Backup Path**

POD2

MySQL

192.168.2.100

/data/smartech_sit_dbbackup/pod2_fulldump/pod2_fulldump_20231109

POD1

MySQL

192.168.2.100

/data/smartech_sit_dbbackup/pod1_fulldump/pod1_fulldump_20231109

PreProd

MySQL

POD2

Mongo

POD1

Mongo

PreProd

Mongo

POD2

Vertica

POD1

Vertica

PreProd

Vertica

**Environment**

**Panel**

**ClientID**

**Database Type**

**Database Location**

**Storage Location**

POD2

kamal_sdet2

`85591`

MySQL

192.168.54.26

`s3://smartech-devops/DB-Snapshot/mysql/pod2/kamal_sdet2_mysql_golddump.sql.gz`Account ID : 406255921449

POD2

kamal_sdet2

`85591`

Mongo

Account ID : 406255921449POD2

kamal_sdet2

`85591`

VerticaDB

192.168.14.17

Backup Path: `s3://smartech-devops/DB-Snapshot/vertica/pod2/`Schema dump name: `kamal_sdet2_vertica_golden_schema.sql`Data dump dir:`kamal_sdet2_vertica_golden_dump/`

POD1

ia20

`79421`

MySQL

192.168.54.8

`s3://smartech-devops/DB-Snapshot/mysql/pod1/ia20_mysql_golddump.sql.gz`Account ID : 406255921449

POD1

ia20

`79421`

Mongo

`mongo-query-pod1.netcorein.com`

`s3://smartech-devops/DB-Snapshot/mongodb/pod1/ia20_mongodb_golden_dump.tar.gz`Account ID : 406255921449

POD1

ia20

`79421`

VerticaDB

192.168.14.17

Backup Path: `s3://smartech-devops/DB-Snapshot/vertica/pod1/`Schema dump name: `ia20_vertica_golden_schema.sql`Data dump dir:`ia20_vertica_golden_dump/`

PreProd

preprod_auto_ia2

176259

MySQL

`preproddb`

`s3://smartech-devops/DB-Snapshot/mysql/preprod/preprod_auto_ia2_mysql_golddump.sql.gz`

Account ID : 406255921449

PreProd

preprod_auto_ia2

176259

Mongo

`mgawsus8`

`s3://smartech-devops/DB-Snapshot/mongodb/preprod/preprod_auto_ia2_mongodb_golden_dump.tar.gz`

Account ID : 406255921449

PreProd

preprod_auto_ia2

176259

VerticaDB

public ip `54.163.148.19`

private ip 172.30.0.27

PreProd

prapp1_auto_ia20

174944

MySQL

`preproddb`

`s3://smartech-devops/DB-Snapshot/mysql/preprod/preprod_prapp1_auto_ia20_mysql_dbump.sql.gz`Account ID : 406255921449

PreProd

prapp1_auto_ia20

174944

Mongo

`mgawsus8`

`s3://smartech-devops/DB-Snapshot/mongodb/preprod/preprod_prapp1_auto_ia20_mongodb_dbump.tar.gz`Account ID : 406255921449

PreProd

prapp1_auto_ia20

174944

VerticaDB

`vertica-cluster-url-01-preprod.netcorein.com `

Backup Path: `s3://smartech-devops/DB-Snapshot/vertica/preprod/`Schema dump name: `preprod_prapp1_auto_ia20_vertica_schema_dbump.sql`Data dump dir:`preprod_prapp1_auto_ia20_vertica_dump`Account ID : 406255921449

Prod-EU

euqa1

`145223`

MySQL

`mysql-app.eu-north-1.eu.smt.internal`

Prod-EU

euqa1

`145223`

Mongo

`mongo-04.eu-north-1.eu.smt.internal`

Prod-EU

euqa1

`145223`

VerticaDB

Prod-Ind

automation_ind_legacy

`176213`

MySQL

`tpdbin1.netcore.co.in`

Prod-Ind

automation_ind_legacy

`176213`

Mongo

`nc-mgin1-cfg1.netcore.in`

Prod-Ind

automation_ind_legacy

`176213`

VerticaDB

Prod-US

prapp4_automation1

`176031`

MySQL

`pdb4.netcore.co.in`

Prod-US

prapp4_automation1

`176031`

Mongo

`nc-mgus3-cfg2.netcore.in`

Prod-US

prapp4_automation1

`176031`

VerticaDB

Backup and Restore of MySQL,Mongo and VerticaDB- Backup &rarr; [http://192.168.2.136:8080/job/qa-db-backup/](http://192.168.2.136:8080/job/qa-db-backup/)

- Restore &rarr; [http://192.168.2.136:8080/job/qa-db-restore/](http://192.168.2.136:8080/job/qa-db-restore/)

---

### Kubernetes and APM

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3544154127)

POD2 environment

**LOG :**

Server  : 192.168.53.8 

GeGetAttributes 

1./var/log/apps/central-logging/pod2/go-get-attribute/go-get-attribute-stdout.log

Gopushpq 

2./var/log/apps/central-logging/pod2/gopushpq/gopushpq-stdout.log

**ARGO CD **POD2 [https://192.168.54.30:32263/](https://192.168.54.30:32263/)smartechro

smartechro@123

**ConfigHub **POD2[http://192.168.54.27:8056/account/netcorecloud](http://192.168.54.27:8056/account/netcorecloud)user: smartechropwd: smartechro@123

APM

**IND** -[http://13.235.186.165:5601/app/discover](http://13.235.186.165:5601/app/discover)**US Prod** : [http://smt-elk.netcore.co.in:3000/app/discover](http://smt-elk.netcore.co.in:3000/app/discover)

**EU IDC :**

[https://kibana-eu.netcoresmartech.com/app/kibana#/discover?_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-30m,to:now))&amp;_a=(columns:!(service.name,processor.event,labels.queue_name,transaction.name),filters:!(),index:f491bc60-af32-11ec-9e9e-a1fc3d63569d,interval:auto,query:(language:kuery,query:''),sort:!(!('@timestamp',desc)))](https://kibana-eu.netcoresmartech.com/app/kibana#/discover?_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-30m,to:now))&amp;_a=(columns:!(service.name,processor.event,labels.queue_name,transaction.name),filters:!(),index:f491bc60-af32-11ec-9e9e-a1fc3d63569d,interval:auto,query:(language:kuery,query:''),sort:!(!('@timestamp',desc))))

---

### Central Logging with ElasticSearch Kibana

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3600220182)



---

### Log infomation for componets under HA

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3634594076)

Contains logs information for all componets under HA 

**Component **

**POD2**

**Pre prod **

**Production **

login (ngn_login)

To access machine level logs

**note -** for IP for the EC2 machine should be replaced in - here  -  *ssh -i nginx-key.pem centos@&lt;EC2 machine IP&gt;*

- EC2 machine ip can be found in AWS console under mumbai region 

kibana logs-  [here ](http://192.168.53.6:5601/app/kibana#/discover?_g=(refreshInterval:(pause:!f,value:5000),time:(from:now%2Fd,mode:quick,to:now%2Fd))&amp;_a=(columns:!(_source),index:'9fc65760-5c23-11ed-9982-ed18faefb444',interval:auto,query:(language:lucene,query:'23163'),sort:!('@timestamp',desc)))

login url - [https://login-pod2.netcoresmartech.com/](https://login-pod2.netcoresmartech.com/) 

kibana logs  - [here ](http://clkibana.netcore.co.in:5601/app/discover#/?_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-1d,to:now))&amp;_a=(columns:!(log),filters:!(),hideChart:!t,index:'30ba2600-60e0-11ed-9cfd-dfb2ca2f4395',interval:auto,query:(language:kuery,query:''),sort:!(!('@timestamp',desc))))

login url - [https://login-preprod.netcoresmartech.com/](https://login-preprod.netcoresmartech.com/) 

kibana logs  - [here ](http://clkibana.netcore.co.in:5601/app/discover#/?_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-1d,to:now))&amp;_a=(columns:!(log),filters:!(('$state':(store:appState),meta:(alias:!n,disabled:!f,index:de1c45a0-5684-11ed-8bec-fdd70329c0e8,key:app_name,negate:!f,params:(query:ngn_login),type:phrase),query:(match_phrase:(app_name:ngn_login)))),hideChart:!t,index:de1c45a0-5684-11ed-8bec-fdd70329c0e8,interval:auto,query:(language:kuery,query:''),sort:!(!('@timestamp',desc))))

login url - [https://login.netcoresmartech.com/](https://login.netcoresmartech.com/) 

LS webapp

Not behind HA

preprod kibana  - [**here**](http://clkibana.netcore.co.in:5601/app/discover#/?_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-1d,to:now))&amp;_a=(columns:!(log),filters:!(),hideChart:!t,index:eac28860-761d-11ed-9cfd-dfb2ca2f4395,interval:auto,query:(language:kuery,query:''),sort:!(!('@timestamp',desc))))** **

prod us kibana -  [**here** ](http://clkibana.netcore.co.in:5601/app/discover#/?_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-1d,to:now))&amp;_a=(columns:!(log),filters:!(),hideChart:!t,index:f9aeefc0-7ac9-11ed-9cfd-dfb2ca2f4395,interval:auto,query:(language:kuery,query:''),sort:!(!('@timestamp',desc))))

SMS url tracker 

url tracker domain -  [**http://pod2.nmc.sg/**](http://pod2.nmc.sg/)

logs are [here ](http://192.168.53.6:5601/app/discover#/?_g=(refreshInterval:(pause:!f,value:5000),time:(from:now%2Fd,mode:quick,to:now%2Fd))&amp;_a=(columns:!(),filters:!(),hideChart:!t,index:f1728140-82b8-11ed-8cad-7111131eaa94,interval:auto,query:(language:lucene,query:''),sort:!(!('@timestamp',desc))))

url tracker domain - [https://preprod.nmc.sg/](https://preprod.nmc.sg/)

kibana logs - [here](http://clkibana.netcore.co.in:5601/app/discover#/?_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-1d,to:now))&amp;_a=(columns:!(log),filters:!(),hideChart:!t,index:'0bdf0e00-5685-11ed-8bec-fdd70329c0e8',interval:auto,query:(language:kuery,query:'app_name%20:%20%22url_tracker%22%20'),sort:!(!('@timestamp',desc))))

 prod us kibana -  [here](http://clkibana.netcore.co.in:5601/app/discover#/?_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-1d,to:now))&amp;_a=(columns:!(log),filters:!(),hideChart:!t,index:f217f030-fa31-11ed-b70b-8968d2339425,interval:auto,query:(language:kuery,query:''),sort:!(!('@timestamp',desc))))

---

## 📊 Monitoring & Observability

### DataDog - Monitoring tool

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3423895556)

Datadog Understanding Video - Rushabh Shah

---

### What is TRID and how to debug using TRID?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3704913921)



---

### Debugging of MGGenerator

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/4057727063)

What keys are Set by MGGenerator?- For latest list, check the code

[https://gitlab.com/netcorecloud/cee/mggenerator/-/blob/master/deployer/mggenerator.properties.prod#L56](https://gitlab.com/netcorecloud/cee/mggenerator/-/blob/master/deployer/mggenerator.properties.prod#L56) 

- List of keys set by MGGenerator

p1_mgmap

- p1_mgmap_tmp

- p1_mgaccess

- p1_awmap

- p1_app_map_v2

- p1_app_boxx_event

- p1_journey_event_cache

- p1_journey_event_cache_tmp

- p1_common_events

- p1_common_events_tmp

- p1_capikey_v2

- p1_sourceid_map

- `p1_ccmap`

How is the p1_ccmap set?- MGGenerator makes following cURL call

- Sample Response

---

### LSLoader Debugging

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/4103274503)

What is the purpose of LSLoader?- LSLoader is used for refreshing List and Segment

- LSLoader is used for synchronising data from Mongo to MySQL and vice-versa

LSLoader Command to sync data from MySQL to Mongo for all users- Execute below command from the machine on which LSLoader is installed

LSLoader Command to sync data from MySQL to Mongo for specific user- Execute below command from the machine on which LSLoader is installed

 &]]>Test data sync from MySQL to Mongo for specific user- Step 1: Sample of Data Available for SMS Billing Report

 select * from emm_reports.sms_billing_summary where clientid=107311 and datetime=20230915;
+---------+----------+---------+-----------+-----------+-----------+-------+-------+-------+-----------------+-----------------+------+-------+-----+----------+------+------+
| id      | clientid | feed_id | b_message | a_message | t_message | b_sms | a_sms | t_sms | a_delivered_sms | b_delivered_sms | year | month | day | datetime | b_id | a_id |
+---------+----------+---------+-----------+-----------+-----------+-------+-------+-------+-----------------+-----------------+------+-------+-----+----------+------+------+
| 8649988 |   107311 | 383213  |         1 |         0 |         0 |     1 |     0 |     0 |               0 |               0 | 2023 |     9 |  15 | 20230915 | 1831 |    0 |
+---------+----------+---------+-----------+-----------+-----------+-------+-------+-------+-----------------+-----------------+------+-------+-----+----------+------+------+
1 row in set (0.03 sec)]]>- Step 2: Sample command to Delete entry from MySQL

 delete from emm_reports.sms_billing_summary where clientid=107311 and datetime=20230915;
Query OK, 1 row affected (0.01 sec)]]>- Step 3: Sample command to Verify data is Deleted

 select * from emm_reports.sms_billing_summary where clientid=107311 and datetime=20230915;
Empty set (0.00 sec)]]>- Step 4: Run the LSLoader Command to put data into MySQL

- Step 5: After running script verify following

 select * from emm_reports.sms_billing_summary where clientid=107311 and datetime=20230915;
+---------+----------+---------+-----------+-----------+-----------+-------+-------+-------+-----------------+-----------------+------+-------+-----+----------+------+------+
| id      | clientid | feed_id | b_message | a_message | t_message | b_sms | a_sms | t_sms | a_delivered_sms | b_delivered_sms | year | month | day | datetime | b_id | a_id |
+---------+----------+---------+-----------+-----------+-----------+-------+-------+-------+-----------------+-----------------+------+-------+-----+----------+------+------+
| 8687665 |   107311 | 383213  |         1 |         0 |         0 |     1 |     0 |     0 |               0 |               0 | 2023 |     9 |  15 | 20230915 | 1831 |    0 |
+---------+----------+---------+-----------+-----------+-----------+-------+-------+-------+-----------------+-----------------+------+-------+-----+----------+------+------+
1 row in set (0.02 sec)]]>
Test data sync from Mongo to MySQL for specific user- Step 1: Verify data exists in MySQL

 select * from custom_umg_map order by startdate desc limit 1;
+-----------+---------------------+---------------------+---------+
| messageid | startdate           | enddate             | tableid |
+-----------+---------------------+---------------------+---------+
|      7516 | 2023-10-05 13:31:42 | 2023-10-05 13:31:45 |       1 |
+-----------+---------------------+---------------------+---------+
1 row in set (0.01 sec)

MySQL [qa_manual1]> select * from custom_umg_1 where messageid=7516;
+-----------+----------+----------+
| messageid | userid   | entered  |
+-----------+----------+----------+
|      7516 |    10034 | 23100528 |
|      7516 | 13804285 | 23100528 |
+-----------+----------+----------+
2 rows in set (0.01 sec)]]>- Step 2: Delete data from MySQL

- Step 3: Run the LSLoader Command 

- Step 4: Verify data exists in Mongo by running the below command. Change mid and uid

 db.userDetails.find({""s.mid"": 4540,""uid"": 10034},{""s.$"": 1});
{ ""_id"" : ObjectId(""5f1efd3f9474cb58c498f498""), ""s"" : [ { ""mid"" : 4540, ""aid"" : 2288, ""trid"" : ""107311-4540-10034-2288-220923121127"", ""dt"" : NumberLong(""220923121127""), ""adw"" : 6, ""ad"" : 220923, ""at"" : 121127 } ] }]]>- Step 5: Verify if data inserted in custom_umg_1

Run the LSLoader Command 

- - Verify a new entry will be added in Mongo. Use the following command for reference

 db.userDetails.find({""s.mid"": 4540,""uid"": 10034},{""s.$"": 1});]]>

---

## 🎮 Specialized Features

### Debug Limechat

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/4125130870)

cid-channelid OR gatewayid-msgid-uid-aid-timestamp
What is the channelid of Limechat?- channelid of limechat is 13

What is the pattern that QA follows to create integration name?- limechat_preprod_174942_marketplace_20250131

- GatewayName_Environment_CID_marketplace_YYYYMMDD

How to integrate Limechat - KT Video- https://drive.google.com/file/d/11epi46MDzutiHkM_ePDnOtDWQc_He012/view?usp=drive_link

---

### CEE CPAAS RCS Panel

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3826384911)

**CPAAS Panel - cee_auto_one**

**CPAAS Panel - cee_auto_two**

**CPAAS Panel - cee_auto_three**

**CPAAS Panel - cee_auto_four**

**CPAAS Panel - cee_auto_five**

CPAAS Password: Sm@rt@50

CPAAS Password: Sm@rt@50

CPAAS Password: Sm@rt@50

CPAAS Password: Sm@rt@50

CPAAS Password: Sm@rt@50

---

### How to debug GCM (Google Contact Manager)?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3971743758)



---

### How to debug GCM in journeys

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3888775564)

GCM FLOW 

STEP 1 &gt; CHeck if Processed by STORM

STEP 2 &gt; CHeck if Message Router has recieved[https://argocd-stg1.netcorein.com/applications/message-router-mktplace-high-hdeq-batching-stg1?resource=](https://argocd-stg1.netcorein.com/applications/message-router-mktplace-high-hdeq-batching-stg1?resource=)

STEP 3 &gt; CHeck in s3tobatch stream lambda[https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/sentry-mktplace-s3batch-to-stream-processor_stg1?tab=monitoring](https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/sentry-mktplace-s3batch-to-stream-processor_stg1?tab=monitoring)

STEP 4 &gt; REquest should be picked up by pod leader[https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/sentry-mktplace-pod-leader_stg1?tab=code](https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/sentry-mktplace-pod-leader_stg1?tab=code)

STEP 5 &gt; POD leader should invoke pod follower[https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/sentry-mktplace-gcm-pod-follower_stg1?tab=code](https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/sentry-mktplace-gcm-pod-follower_stg1?tab=code)

STEP 6 &gt; Pod follower pushes to Kinesis stream

STEP 7 &gt; CSV file should be created in s3 bucket[https://s3.console.aws.amazon.com/s3/buckets/nc-cee-mktplace-gcm-events-stg1?region=ap-south-1&amp;bucketType=general&amp;tab=objects](https://s3.console.aws.amazon.com/s3/buckets/nc-cee-mktplace-gcm-events-stg1?region=ap-south-1&amp;bucketType=general&amp;tab=objects)

STEP 8 &gt; Invoke the GCM Invoker lambda[https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/sentry-mktplace-gcm-invoker_stg1?tab=monitoring](https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/sentry-mktplace-gcm-invoker_stg1?tab=monitoring)

STEP 9 &gt; GCM Journey Manager lambda will be invoked[https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/gcm-journey-manager_stg1?tab=monitoring](https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/gcm-journey-manager_stg1?tab=monitoring)

STEP 10 &gt; Request tracker lambda used by GCM Journey Manager for DB Crud[https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/gcm-journey-request-tracker_stg1?tab=code](https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/gcm-journey-request-tracker_stg1?tab=code)

**note  - **for pod2 lambdas **- **[sentry-mktplace-s3batch-to-stream-processor](https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/sentry-mktplace-s3batch-to-stream-processor_stg1?tab=monitoring) , [sentry-mktplace-pod-leader](https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/sentry-mktplace-pod-leader_stg1?tab=code) , [sentry-mktplace-gcm-pod-follower](https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/sentry-mktplace-gcm-pod-follower_stg1?tab=code) are located in aws region **us-west-1** and [sentry-mktplace-gcm-invoker](https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/sentry-mktplace-gcm-invoker_stg1?tab=monitoring) , [gcm-journey-manager](https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/gcm-journey-manager_stg1?tab=monitoring) , [gcm-journey-request-tracker](https://ap-south-1.console.aws.amazon.com/lambda/home?region=ap-south-1#/functions/gcm-journey-request-tracker_stg1?tab=code) are located in **ap-south-1** aws region

**How to connect to db for Gcm on pod2**

---

### How to delete attributes, increase attribute limit AND increase activity limit?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/3954475025)

How to delete attributes on Production Panel?- Use this website &rarr; [http://mmail.netcore.co.in/panels/automated_tasks.php](http://mmail.netcore.co.in/panels/automated_tasks.php)

How to delete attributes on PreProd Panel?- To delete from MySQL and Mongo

- To delete from VerticaDB

- The manual deletion process will be automated once this task is released SMT-42328f35b0ece-c90d-3aa4-bc31-5387dc866132System Jira 

How to delete attributes on POD2 Panel?- To delete from MySQL and Mongo

- To delete from VerticaDB

---

### How to debug Harvest Error OR perform Clean Upload?

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/4133486703)



---

### Debugging Generic channels

> **Source**: [Confluence Page](https://netcoresolutions.atlassian.net/wiki/spaces/SE/pages/4180213762)

generic channel event id and there mapping db infovertica dbpublish records stores in channel_publish 

sent records stores in channel_sent

delivered records stores in channel_delivered

click and read records stores in channel_read

failed and not sent records stores in channel_failed

any other status gets stored in  channel_others

eg -:

 select * from s_83151.channel_publish limit 1;
 event_id |  cid  | uid | utype | mid | aid |               trid               |   ad   |     adat     |       c_time        |   c_date   |       generated_date       
----------+-------+-----+-------+-----+-----+----------------------------------+--------+--------------+---------------------+------------+----------------------------
    10001 | 83151 |   1 |     1 |  61 |  36 | 83151-61-3348988-36-221223131458 | 221223 | 221223131458 | 2022-12-23 13:14:58 | 2022-12-23 | 2023-07-20 17:25:23.643265
(1 row)

smartech=> select * from s_83151.channel_sent limit 1;
 event_id |  cid  | uid | utype |  mid  | aid |             trid             | srcid | guid |   ad   |     adat     |       c_time        |   c_date   |    mobile    | event_time |       generated_date       
----------+-------+-----+-------+-------+-----+------------------------------+-------+------+--------+--------------+---------------------+------------+--------------+------------+----------------------------
    10002 | 83151 |   1 |     1 | 25632 |   0 | 83151-25632-1-0-240528181844 |       |      | 240528 | 240528181913 | 2024-05-28 18:19:13 | 2024-05-28 | 919870524533 |            | 2024-05-28 18:21:22.238886
(1 row)

smartech=> select * from s_83151.channel_delivered limit 1;
 event_id |  cid  | uid | utype |  mid  | aid |             trid             |   ad   |     adat     | b | o | d | lat | lng | guid | ctime | srcid | gwsource | ct |       c_time        |   c_date   |     sentc_time      | sentc_date |    mobile    | event_time |       generated_date       | ctype | snid | url | title | tx | et | npv | sts | av | sv | ov | nm | so | mk | mo | osType | ip 
----------+-------+-----+-------+-------+-----+------------------------------+--------+--------------+---+---+---+-----+-----+------+-------+-------+----------+----+---------------------+------------+---------------------+------------+--------------+------------+----------------------------+-------+------+-----+-------+----+----+-----+-----+----+----+----+----+----+----+----+--------+----
    10003 | 83151 |   1 |     1 | 25632 |   0 | 83151-25632-1-0-240528181844 | 240528 | 240528181913 |   |   |   |     |     |      |       |       |          |    | 2024-05-28 18:19:13 | 2024-05-28 | 2024-05-28 18:18:44 | 2024-05-28 | 919870524533 |            | 2024-05-28 18:21:27.565287 |       |      |     |       |    |    |     |     |    |    |    |    |    |    |    |        | 
(1 row)

smartech=> select * from s_83151.channel_click limit 1;
 event_id |  cid  | uid | utype |  mid  | aid | fid | lat | lng | b | o | d | srcid | guid |             trid             | gwsource | sub | ct |   ad   |     adat     |       c_time        |   c_date   |     sentc_time      | sentc_date |    mobile    | event_time | link_id |       generated_date       | ctype | snid | url | title | tx | et | npv | sts | av | sv | ov | nm | so | mk | mo | osType | ip | furl 
----------+-------+-----+-------+-------+-----+-----+-----+-----+---+---+---+-------+------+------------------------------+----------+-----+----+--------+--------------+---------------------+------------+---------------------+------------+--------------+------------+---------+----------------------------+-------+------+-----+-------+----+----+-----+-----+----+----+----+----+----+----+----+--------+----+------
    10004 | 83151 |   1 |     1 | 25632 |   0 |     |     |     |   |   |   |       |      | 83151-25632-1-0-240528181844 |          |     |    | 240528 | 240528233533 | 2024-05-28 23:35:33 | 2024-05-28 | 2024-05-28 18:18:44 | 2024-05-28 | 919870524533 |            |         | 2024-05-28 23:36:29.263721 |       |      |     |       |    |    |     |     |    |    |    |    |    |    |    |        |    | 
(1 row)

smartech=> select * from s_83151.channel_failed limit 1;
 event_id |  cid  | uid | utype |  mid  | aid | lat | lng | b | o | d | srcid | guid |              trid              |   ad   |     adat     | ctime |       c_time        |   c_date   |    mobile    | status | reason_code | event_time |       generated_date       |     sentc_time      | sentc_date | reason 
----------+-------+-----+-------+-------+-----+-----+-----+---+---+---+-------+------+--------------------------------+--------+--------------+-------+---------------------+------------+--------------+--------+-------------+------------+----------------------------+---------------------+------------+--------
    10005 | 83151 |   1 |     1 | 24862 | 773 |     |     |   |   |   |       |      | 83151-24862-1-773-230801151022 | 230801 | 230801151309 |       | 2023-08-01 15:13:09 | 2023-08-01 | 919870524533 |        |             |            | 2023-08-01 15:15:10.118862 | 2023-08-01 15:10:22 | 2023-08-01 | 
(1 row)

smartech=> select * from s_83151.channel_others limit 1;
 event_id |  cid  | uid | utype |  mid  | aid | lat | lng | b | o | d | srcid | guid |             trid             | gwsource | ct | action |   ad   |     adat     | ctime |       c_time        |   c_date   |   mobile    | event_time |       generated_date       | sentc_date |     sentc_time      | snid | url | title | tx | et | npv | sts | av | sv | ov | nm | so | mk | mo | osType | ip | purl | frsp 
----------+-------+-----+-------+-------+-----+-----+-----+---+---+---+-------+------+------------------------------+----------+----+--------+--------+--------------+-------+---------------------+------------+-------------+------------+----------------------------+------------+---------------------+------+-----+-------+----+----+-----+-----+----+----+----+----+----+----+----+--------+----+------+------
    10006 | 83151 |   7 |     1 | 24493 |   0 |     |     |   |   |   |       | null | 83151-24493-7-0-230607162456 |          |    |        | 230607 | 230607162515 |       | 2023-06-07 16:25:15 | 2023-06-07 | 08884339779 |            | 2023-06-07 16:26:28.767179 | 2023-06-07 | 2023-06-07 16:24:56 |      |     |       |    |    |     |     |    |    |    |    |    |    |    |        |    |      | 
(1 row)

smartech=> ]]>the page is work inprogress*

---


## 🔄 Integration Guidelines for PEDS Analysis

### 🎯 Component Mapping
When analyzing PEDS tickets, this handbook provides:

1. **Component Identification**: Map ticket components to debugging sections
2. **Procedure Selection**: Choose appropriate debugging steps based on issue type
3. **Testing Verification**: Use handbook procedures to verify fixes
4. **Knowledge Transfer**: Reference relevant sections in analysis reports

### 🔄 Analysis Enhancement Workflow

```mermaid
graph TD
    A[PEDS Ticket Analysis] --> B[Identify Components]
    B --> C[Reference Debugging Handbook]
    C --> D[Apply Specific Procedures]
    D --> E[Include in Analysis Report]
    E --> F[Update Knowledge Base]
```

### 📋 Analysis Template Integration

Each PEDS analysis should include:
- **Debugging Guidance**: Relevant handbook sections
- **Testing Procedures**: Step-by-step validation steps
- **Common Patterns**: Similar issues and solutions
- **Prevention Steps**: How to avoid similar issues

---

## 📞 Support & Resources

### 🔗 Related Documentation
- [Netcore Jira Reference](../netcore-platform/netcore_jira_reference.md)
- [PEDS Analysis Patterns](../../analysis-patterns/)
- [Component Impact Matrix](../../defect-knowledge/component-impact-matrix.md)

---

*This handbook contains the complete debugging procedures from Confluence, automatically referenced during PEDS analysis for context-aware debugging guidance.*

**📊 Coverage**: 80+ comprehensive debugging procedures across all Smartech components
**🔄 Last Updated**: Extracted from Confluence with full content
**🎯 Usage**: Integrated with automated PEDS analysis workflow
