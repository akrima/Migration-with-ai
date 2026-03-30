---
name: project-understanding
description: Deeply understand a Java Lambda or Java Spring Boot EKS repository and generate a functional Markdown explanation.
---

# Project Understanding Skill

## Use this skill when
- You need to understand what a project does end-to-end.
- You need to generate an onboarding document for an existing repository.
- You need to classify the project as Lambda or EKS.

## Required outputs
- `docs/ai/project-understanding.md`

## Instructions
1. Detect project type.
2. Read build files, source tree, configs, infra files, and CI/CD files.
3. Identify runtime entry points and main flow.
4. Identify domain purpose, inputs, outputs, integrations, failure paths, and observability model.
5. Fill the report template.

See `CHECKLIST.md`, `REPORT_TEMPLATE.md`, and `PROJECT_TYPE_RULES.md`.
