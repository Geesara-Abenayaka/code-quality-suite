@echo off
cd /d "D:\QA project\sonarqube-9.9.0.65466\bin\windows-x86-64"
set SONAR_JAVA_PATH=D:\QA project\jdk-17.0.2\bin\java.exe
set JAVA_HOME=D:\QA project\jdk-17.0.2
set SONAR_CE_JAVAOPTS=-Xmx1024m -Xms128m
set SONAR_WEB_JAVAOPTS=-Xmx1024m -Xms128m
set SONAR_ES_JAVAOPTS=-Xmx512m -Xms512m
echo Starting SonarQube with reduced memory...
StartSonar.bat
