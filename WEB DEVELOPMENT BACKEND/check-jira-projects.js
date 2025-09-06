// Check available projects in Jira
const axios = require('axios');
require('dotenv').config();

const JIRA_CONFIG = {
  baseURL: process.env.JIRA_BASE_URL || 'https://your-domain.atlassian.net',
  email: process.env.JIRA_EMAIL || 'your-email@example.com',
  apiToken: process.env.JIRA_API_TOKEN || 'your-api-token-here'
};

async function getProjects() {
  const auth = Buffer.from(`${JIRA_CONFIG.email}:${JIRA_CONFIG.apiToken}`).toString('base64');
  
  try {
    console.log('🔍 Checking available projects in your Jira...');
    
    const response = await axios.get(
      `${JIRA_CONFIG.baseURL}/rest/api/3/project`,
      {
        headers: {
          'Authorization': `Basic ${auth}`,
          'Accept': 'application/json'
        }
      }
    );
    
    console.log('\n📋 Available Projects:');
    console.log('=====================');
    
    if (response.data.length === 0) {
      console.log('❌ No projects found. You need to create a project first!');
      console.log('\n📝 To create a project:');
      console.log('1. Go to: https://abefamily80.atlassian.net');
      console.log('2. Click "Create project"');
      console.log('3. Choose "Software Development" template');
      console.log('4. Name it "Music Festival" with key "MF"');
    } else {
      response.data.forEach(project => {
        console.log(`   • ${project.name} (Key: ${project.key})`);
        console.log(`     ID: ${project.id} | Type: ${project.projectTypeKey}`);
        console.log(`     URL: ${project.self}`);
        console.log('');
      });
      
      console.log('🎯 Update your import script with one of these project keys!');
    }
    
  } catch (error) {
    console.error('❌ Error getting projects:', error.response?.data || error.message);
    
    if (error.response?.status === 401) {
      console.log('\n🔐 Authentication failed. Please check:');
      console.log('1. Your email is correct: Abefamily80@gmail.com');
      console.log('2. Your API token is valid');
      console.log('3. Your Jira URL is correct: https://abefamily80.atlassian.net');
    }
  }
}

getProjects();
