# QA Code Quality & Security Analysis Suite

A comprehensive Quality Assurance (QA) and static application security testing (SAST) repository. This workspace integrates SonarQube automated analysis pipelines across multi-tier backend services and Spring Boot test-driven development (TDD) implementations.

---

## 📌 Project Overview

This repository standardizes local code quality enforcement, vulnerability scanning, and automated test coverage across full-stack and backend service architectures. It provides ready-to-run automation scripts for standing up optimized SonarQube instances configured specifically for Java 17+ environments.

### Key Capabilities
- **Static Code Analysis (SAST):** Automated detection of bugs, code smells, and security vulnerabilities via SonarQube.
- **Test-Driven Development (TDD):** Unit and integration testing suites configured within Spring Boot microservices.
- **Automated Service Management:** Batch scripts for managing SonarQube lifecycle, memory optimization, and environment resets.
- **Secure Configurations:** Environment-variable-driven configuration files (`.env.example`) preventing secret leaks.

---

## 📁 Repository Structure

```text
├── Test driven development/
│   └── springbootapp/             # Spring Boot TDD test suites & core logic
├── WEB DEVELOPMENT BACKEND/        # Core backend services and REST APIs
├── WEB DEVELOPMENT/
│   └── musicfestival/              # Event management service integration
├── .env.example                    # Sample environment variables & secrets
├── .gitignore                      # Git exclusion rules
├── fixed-sonar-start.bat           # SonarQube launcher with path/environment fixes
├── quick-start-sonar.bat           # Fast boot script for local SonarQube
├── reset-sonar.bat                 # Clears cache and resets SonarQube state
├── start-sonar-java17.bat          # Explicit Java 17 runtime launcher
├── start-sonar-optimized.bat       # Memory and performance-tuned startup script
└── start-sonarqube-java17.bat       # Production-aligned Java 17 SonarQube launcher
