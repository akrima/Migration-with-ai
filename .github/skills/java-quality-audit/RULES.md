# Rules
- Prefer concrete code evidence over generic advice.
- Do not invent vulnerabilities without source evidence.
- Flag dependency obsolescence as upgrade recommendation, not as a proven CVE unless verified elsewhere.
- Review dependency versions and identify safer target versions without known vulnerabilities when feasible.
- For Lambda: focus on handlers, streams, temp files, SDK clients, retries, idempotency, timeout safety.
- For EKS: focus on Spring bean lifecycle, HTTP timeouts, thread pools, blocking calls, actuator, health checks, resilience, config binding.
- Review whether Java records would simplify immutable carriers.
- Review whether virtual threads are useful for I/O-bound concurrency in the project.
- For tests: flag missing AssertJ, weak assertions, non-parameterized repetitive tests, poor naming, missing Arrange/Act/Assert comments.
