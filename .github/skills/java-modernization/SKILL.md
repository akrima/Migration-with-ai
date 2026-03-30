---
name: java-modernization
description: Plan and apply approved modernization for Java Lambda or EKS repositories, including Java version bump and testing standards alignment.
---

# Java Modernization Skill

## Use this when
- The user approved fixes.
- The user optionally approved Java 25 migration.

## Mandatory modernization rules
- Generated Java code must be self-explanatory.
- Do not add comments in production code unless strictly necessary.
- When a comment is necessary, it must be in English only.
- Preserve behavior.
- Prefer constructor injection.
- Prefer `var` for local variables where readable.
- Use AssertJ assertions.
- Use Mockito.
- Prefer parameterized tests where appropriate.
- Test methods must follow `should_return_x_when_y()` or `should_do_x_when_y()`.
- Add `// Arrange`, `// Act`, `// Assert` comments in unit tests.
- Respect `checkstyle.xml`.
- Update POMs, plugin versions, CI/CD references, and code usage consistently.

See `CHECKLIST.md`, `VERSION_MATRIX.md`, and `CODING_STANDARDS.md`.
