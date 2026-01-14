#!/bin/bash

# N8N Knowledge Base Deployment Script
# This script deploys all required MD files to the n8n server

set -e

# Configuration
N8N_SERVER="your-n8n-server"
N8N_USER="your-user"
KB_PATH="/opt/n8n/knowledge-base"

echo "🚀 N8N Knowledge Base Deployment Script"
echo "========================================"

# Check if server details are configured
if [[ "$N8N_SERVER" == "your-n8n-server" ]]; then
    echo "❌ Please configure N8N_SERVER, N8N_USER in this script first!"
    echo "   Edit lines 7-8 with your actual server details"
    exit 1
fi

echo "📋 Deployment Details:"
echo "   Server: $N8N_SERVER"
echo "   User: $N8N_USER"
echo "   Path: $KB_PATH"
echo ""

# Function to deploy files
deploy_files() {
    local category=$1
    local count=$(find $category -name "*.md" | wc -l)
    
    echo "📁 Deploying $category files ($count files)..."
    
    if [[ $count -gt 0 ]]; then
        scp -r $category/*.md $N8N_USER@$N8N_SERVER:$KB_PATH/$category/
        echo "   ✅ $category deployment complete"
    else
        echo "   ⚠️  No files found in $category"
    fi
}

# Create directory structure on server
echo "🏗️  Creating directory structure on server..."
ssh $N8N_USER@$N8N_SERVER "sudo mkdir -p $KB_PATH/{templates,methodology,platform,patterns,debugging,testing}"
ssh $N8N_USER@$N8N_SERVER "sudo chown -R n8n:n8n $KB_PATH"

# Deploy each category
deploy_files "templates"
deploy_files "methodology" 
deploy_files "platform"
deploy_files "patterns"
deploy_files "debugging"
deploy_files "testing"

# Set permissions
echo "🔒 Setting correct permissions..."
ssh $N8N_USER@$N8N_SERVER "sudo chmod -R 755 $KB_PATH"
ssh $N8N_USER@$N8N_SERVER "sudo find $KB_PATH -type f -name '*.md' -exec chmod 644 {} \;"

# Validate deployment
echo "🔍 Validating deployment..."
REMOTE_COUNT=$(ssh $N8N_USER@$N8N_SERVER "find $KB_PATH -name '*.md' | wc -l")
LOCAL_COUNT=$(find . -name "*.md" | wc -l)

echo "📊 Deployment Summary:"
echo "   Local files: $LOCAL_COUNT"
echo "   Remote files: $REMOTE_COUNT"

if [[ $REMOTE_COUNT -eq $LOCAL_COUNT ]]; then
    echo "   ✅ SUCCESS: All files deployed correctly!"
else
    echo "   ❌ WARNING: File count mismatch!"
fi

echo ""
echo "🎯 Next Steps:"
echo "   1. Import the n8n workflow JSON"
echo "   2. Configure credentials (Jira, Claude, GitLab)"
echo "   3. Test with: /analyze PEDS-12345"
echo ""
echo "✅ Deployment complete!"

