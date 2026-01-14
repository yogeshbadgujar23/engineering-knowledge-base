# 🔧 Quick Fix for n8n → API Connection

## 🚨 **Issue**: n8n can't reach localhost:8000

Since ngrok for API is having issues, let's use a **temporary workaround**:

## 📝 **Option 1: Update n8n Workflow URL (Recommended)**

**In your n8n "Call Search API" node**:

1. **Click on the "Call Search API" node** (the red one with error)
2. **Change the URL from**: 
   ```
   http://localhost:8000/search
   ```
   **To**: 
   ```
   https://skilled-calf-strangely.ngrok-free.app/search
   ```

3. **Add Headers** (very important for ngrok):
   ```
   ngrok-skip-browser-warning: true
   ```

4. **Save the workflow**
5. **Test again**

## 📝 **Option 2: Use n8n Local Development**

If you're running n8n locally, you can:

1. **Stop your current n8n**
2. **Run n8n locally**: `npx n8n`
3. **Access at**: `http://localhost:5678`
4. **Import the workflow there**
5. **Test with localhost API**

## 📝 **Option 3: Mock Data Test (Quick Verification)**

To verify the workflow logic works:

1. **Click "Call Search API" node**
2. **Replace with a "Set" node** temporarily
3. **Set mock data**:
   ```json
   {
     "query": "test",
     "results": [
       {
         "title": "Test Debugging Procedure",
         "content": "This is a test result from mock data",
         "category": "Testing",
         "environment": "POD2",
         "components": ["AMP"],
         "relevance_score": 1.0
       }
     ],
     "total_results": 1,
     "execution_time_ms": 50,
     "source": "Mock Data"
   }
   ```

## 🎯 **Recommended Next Steps**

1. **Try Option 1 first** (update URL + add headers)
2. **If that works**, we know the workflow logic is correct
3. **Then we can fix the ngrok/API exposure issue**

Let me know which option you'd like to try! 