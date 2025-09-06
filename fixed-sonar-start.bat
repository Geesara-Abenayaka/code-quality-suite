@echo off
echo ========================================
echo  FIXING ELASTICSEARCH ISSUES
echo ========================================

REM Kill any existing Java processes
taskkill /F /IM java.exe >nul 2>&1

REM Clean up any leftover data
rmdir /s /q "D:\QA project\sonarqube-9.9.0.65466\data" >nul 2>&1
rmdir /s /q "D:\QA project\sonarqube-9.9.0.65466\temp" >nul 2>&1
rmdir /s /q "D:\QA project\sonarqube-9.9.0.65466\logs" >nul 2>&1

REM Wait for cleanup
timeout /t 3 >nul

REM Set Java environment
set JAVA_HOME=D:\QA project\jdk-17.0.2
set SONAR_JAVA_PATH=D:\QA project\jdk-17.0.2\bin\java.exe

REM Reduced memory settings for Elasticsearch stability
set SONAR_ES_JAVAOPTS=-Xmx256m -Xms256m
set SONAR_WEB_JAVAOPTS=-Xmx512m -Xms128m  
set SONAR_CE_JAVAOPTS=-Xmx512m -Xms128m

echo Starting SonarQube with FIXED Elasticsearch settings...
cd /d "D:\QA project\sonarqube-9.9.0.65466\bin\windows-x86-64"
StartSonar.bat

echo.
echo If successful, SonarQube will be at: http://localhost:9000
echo Login: admin / admin
pause
