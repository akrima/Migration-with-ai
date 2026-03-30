# Migration-with-ai

AI agent pack for migrating Java Lambda and Java Spring Boot EKS repositories to a new GitHub organization structure, CI/CD model, and modernization workflow.

This repository contains:
- Custom GitHub Copilot agents for VS Code
- Skills for analysis, audit, modernization, build verification, and reporting
- Reference documents and conventions
- Helper scripts for Maven settings detection and build loops

Main goals:
- Understand an existing Java project deeply
- Generate project understanding and quality audit reports
- Ask before applying fixes
- Optionally migrate to Java 25
- Centralize multi-module versions in the parent POM properties
- Upgrade dependencies toward safer versions
- Evaluate Java records and virtual threads when relevant
- Run `mvn clean install -s settings.xml` in a repair loop until green
- Generate a final migration comparison report
