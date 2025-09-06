@echo off
echo Stopping SonarQube...
taskkill /F /IM java.exe 2>nul

echo Cleaning SonarQube database...
rd /s /q "D:\QA project\sonarqube-9.9.0.65466\data\h2" 2>nul
rd /s /q "D:\QA project\sonarqube-9.9.0.65466\data\es7" 2>nul
rd /s /q "D:\QA project\sonarqube-9.9.0.65466\temp" 2>nul

echo Starting SonarQube with fresh database...
set SONAR_JAVA_PATH=D:\QA project\jdk-17.0.2\bin\java.exe
set SONAR_CE_JAVAOPTS=-Xmx2048m -Xms128m
set SONAR_WEB_JAVAOPTS=-Xmx1024m -Xms128m

cd /d "D:\QA project\sonarqube-9.9.0.65466\bin\windows-x86-64"
StartSonar.bat

echo.
echo SonarQube should be available at: http://localhost:9000
echo For fresh installation, try: admin / admin or admin / (empty password)
pause
