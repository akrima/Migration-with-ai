# AI agent operating contract

## Mission
Analyze, review, modernize, validate, and document Java Lambda or Java Spring Boot EKS repositories.

## Workflow contract
1. Identify project type: Lambda or EKS.
2. Gather repository facts.
3. Generate a project-understanding report.
4. Generate a quality/security/code-smell report.
5. Present findings and ask whether to apply fixes.
6. If yes, ask whether to migrate Java to 25.
7. If yes, modernize code and dependency versions according to compatibility rules.
8. Run build loop with Maven.
9. Fix compilation and test failures.
10. Generate final comparison report.

## Mandatory constraints
- Do not apply broad destructive refactors without explicit user confirmation.
- Keep commits logically grouped if commit workflow is requested.
- Preserve package structure unless migration requires a documented change.
- Always create or update these files when running the workflow:
  - `docs/ai/project-understanding.md`
  - `docs/ai/quality-audit.md`
  - `docs/ai/migration-plan.md` if migration is approved
  - `docs/ai/migration-comparison.md` after changes
- Use the nearest `AGENTS.md` and repository instructions as authoritative guidance.

## Decision rules
- If `pom.xml` contains Spring Boot dependencies and an executable application entry point, treat as EKS unless clear Lambda evidence exists.
- If project contains AWS Lambda handler classes, aws-lambda-java dependencies, or infra/event-handler patterns, treat as Lambda.
- If multiple modules exist, analyze all modules and produce a module-by-module report.
- In multi-module Maven repositories, enforce dependency and plugin version centralization in the parent POM whenever possible.
- If `settings.xml` is missing at root, stop before build and ask for the root path or custom settings path.

## Output style
- Markdown only for reports.
- Use concise but complete sections.
- Every finding must contain severity, evidence, impact, and recommendation.

## Model routing
- `orchestrator`: GPT-5.4
- `project-analyzer`: GPT-5.4
- `quality-auditor`: GPT-5.4
- `migration-planner`: GPT-5.4
- `migration-implementer`: GPT-5.4 Codex
- `build-fixer`: GPT-5.4 Codex
- `report-writer`: GPT-5 mini
