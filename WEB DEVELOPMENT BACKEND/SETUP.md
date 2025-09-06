# 🔒 Environment Setup Guide

## Setup Instructions

1. **Copy Environment Template**
   ```bash
   cp .env.example .env
   ```

2. **Configure Your Environment Variables**
   
   Edit the `.env` file with your actual values:
   
   ```bash
   # Jira Configuration
   JIRA_BASE_URL=https://your-domain.atlassian.net
   JIRA_EMAIL=your-email@example.com
   JIRA_API_TOKEN=your-actual-jira-api-token-here
   JIRA_PROJECT_KEY=YOUR_PROJECT_KEY
   
   # Database Configuration
   DB_HOST=localhost
   DB_PORT=3306
   DB_USER=your-db-user
   DB_PASSWORD=your-db-password
   DB_NAME=music_festival
   ```

3. **How to Get Jira API Token**
   - Go to: https://id.atlassian.com/manage-profile/security/api-tokens
   - Click "Create API token"
   - Give it a label (e.g., "QA Project")
   - Copy the generated token
   - Paste it in your `.env` file

4. **Install Dependencies**
   ```bash
   npm install
   ```

5. **Run the Application**
   ```bash
   npm start
   ```

## Security Note
- Never commit `.env` files to version control
- The `.env.example` file is safe to commit as it contains no real secrets
- All sensitive data has been moved to environment variables

## Available Scripts
- **Jira Integration**: Run any of the `*-jira-*.js` scripts after setting up environment
- **Performance Testing**: Use the load test scripts
- **Security Testing**: Run security test suites
