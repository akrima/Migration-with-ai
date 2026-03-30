# Version matrix policy
- Java migration target: 25 only if explicitly approved.
- Spring Boot migration target for EKS: 4+ only if dependency ecosystem and internal libraries are compatible.
- JUnit target: 6 if ecosystem supports it; otherwise document blocker and keep the highest safe supported version.
- Cucumber target: latest compatible major for the current JUnit platform and plugins.
- Mockito and AssertJ: latest compatible versions supported by the build.
- Dependency target policy: prefer compatible versions with no known vulnerabilities.
- Multi-module policy: parent POM owns version properties; child modules reference those properties.
- Records policy: prefer records for immutable DTOs, commands, events, responses, and value carriers when framework compatibility is preserved.
- Virtual threads policy: consider for I/O-bound services, HTTP clients, database calls, and parallel workloads; avoid when they add complexity without measurable benefit.

When a requested target is not feasible, document blockers instead of forcing a broken migration.
