const { execSync } = require('child_process');

console.log('🚀 Starting Selenium UI Tests\n');
console.log('Frontend should be running on http://localhost:5173\n');

try {
    console.log('📝 Running Login Test...');
    execSync('node login.test.js', { stdio: 'inherit', cwd: __dirname });
    console.log('✅ Login Test Completed\n');
} catch (error) {
    console.error('❌ Login Test Failed\n');
}

try {
    console.log('📝 Running Signup Test...');
    execSync('node signup.test.js', { stdio: 'inherit', cwd: __dirname });
    console.log('✅ Signup Test Completed\n');
} catch (error) {
    console.error('❌ Signup Test Failed\n');
}

console.log('🏁 All Selenium UI Tests Completed');
