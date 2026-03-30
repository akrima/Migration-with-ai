# Repository-wide Copilot instructions

You are working on a Java backend repository that is always one of these two types:
- AWS Lambda in Java
- EKS application in Java with Spring Boot

General mandatory rules:
- Read the codebase deeply before proposing changes.
- Detect whether the repository is Lambda or EKS before making any recommendation.
- Use Java best practices aligned with the version configured in the project.
- Generated Java code must be self-explanatory and readable without relying on comments.
- Do not add comments in production code unless they are truly necessary to clarify a non-obvious constraint, protocol rule, workaround, or safety-critical behavior.
- When a comment is truly necessary in code, it must be written in English only.
- If migration is explicitly requested, target Java 25 when compatible with the repository constraints.
- Update dependencies to versions without known vulnerabilities whenever feasible and compatible with the repository ecosystem.
- In multi-module Maven projects, centralize versions in the parent POM `properties` section and reference them from child modules.
- Use Java records when they improve clarity and fit immutable data carriers.
- Use virtual threads when they are relevant, safe, and beneficial for the workload pattern.
- Respect `checkstyle.xml` located at the repository root.
- Use constructor injection.
- Prefer `var` for local variables when readability stays high.
- Prefer AssertJ assertions.
- Prefer parameterized tests when relevant.
- Prefer Mockito for mocking.
- JUnit test method names must follow `should_return_x_when_y()` or `should_do_x_when_y()`.
- Unit tests must use `// Arrange`, `// Act`, `// Assert` sections.
- Preserve business behavior unless a bug fix is required and clearly documented.
- Never silently remove logs, tracing, correlation-id propagation, metrics, or security checks.
- Flag missing correlation ID propagation, missing structured logs, weak exception handling, potential memory leaks, resource leaks, crash scenarios, and dependency risks.
- For EKS projects, analyze Spring Boot version, starters, actuator, healthchecks, observability, resilience, thread model, virtual-thread suitability, and container readiness/liveness concerns.
- For Lambda projects, analyze handler design, cold start impact, AWS SDK usage, retries, idempotency, memory usage, temporary file cleanup, stream handling, timeout safety, event contract validation, and whether virtual threads would provide value or unnecessary complexity.
- Before applying major fixes, summarize findings and ask for confirmation.
- If user approves fixes, ask whether Java version should be migrated to 25.
- If build tooling is needed, first locate `settings.xml` in repository root. If missing, ask the user for the root folder or custom settings path.
- Default Maven validation command: `mvn clean install -s settings.xml` from repository root.
- If build fails after changes, inspect errors, fix them, and retry until build passes or an external dependency blocks progress.
- Generate Markdown reports under `docs/ai/`.

Code readability rules:
- Write self-explanatory Java code with clear naming and clean structure.
- Do not add comments in production code unless strictly necessary.
- If a comment is necessary, write it in English only.
- Prefer expressive names, small methods, records when appropriate, and intention-revealing structure over comments.

For multi-module Maven repositories:
- Define dependency and plugin versions in the parent `pom.xml`.
- Store reusable version numbers in the parent `properties` section.
- Reference those properties from child modules.
- Avoid duplicating explicit versions in child POMs unless technically required.

Modern Java usage rules:
- Use Java records for immutable DTOs, commands, events, and simple value carriers when framework compatibility is preserved.
- Consider virtual threads for I/O-bound workloads, concurrent external calls, and blocking integration points when they reduce complexity or improve scalability.
- Do not introduce records or virtual threads mechanically; justify them with readability, immutability, compatibility, and runtime behavior.

Model selection policy:
- Use GPT-5.4 for repository-wide reasoning, architecture understanding, audit, and planning.
- Use GPT-5.4 Codex for code edits, build fixing, and agentic coding loops.
- Use GPT-5 mini for Markdown report generation and lightweight summarization.
- Escalate to a stronger model only when the current task shows ambiguity, repeated failures, or architectural complexity.
