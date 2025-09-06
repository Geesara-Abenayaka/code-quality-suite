@echo off
echo Setting up Java 17 for SonarQube...

REM Set the SONAR_JAVA_PATH to our Java 17 installation
set SONAR_JAVA_PATH=D:\QA project\jdk-17.0.2\bin\java.exe

echo Using Java: %SONAR_JAVA_PATH%
"%SONAR_JAVA_PATH%" -version

echo.
echo Starting SonarQube with Java 17...

REM Set memory options for better performance
set SONAR_CE_JAVAOPTS=-Xmx2048m -Xms128m
set SONAR_WEB_JAVAOPTS=-Xmx1024m -Xms128m

cd /d "D:\QA project\sonarqube-9.9.0.65466\bin\windows-x86-64"
StartSonar.bat

echo.
echo SonarQube should be available at: http://localhost:9000
echo Default login: admin / admin
pause
