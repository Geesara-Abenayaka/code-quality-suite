@echo off
echo Starting SonarQube with Java 17...

REM Set Java 17 path (using downloaded portable version)
set JAVA_HOME=D:\QA project\jdk-17.0.2

REM Add Java 17 to PATH for this session
set PATH=%JAVA_HOME%\bin;%PATH%

REM Check Java version
echo Using Java version:
java -version

REM Start SonarQube
echo.
echo Starting SonarQube server...
cd /d "D:\QA project\sonarqube-9.9.0.65466\bin\windows-x86-64"
StartSonar.bat

pause
