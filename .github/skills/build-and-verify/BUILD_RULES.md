# Build rules
- Preferred command: `mvn clean install -s settings.xml`
- If repository root is ambiguous, ask the user.
- If multi-module, run from aggregator root when possible.
- Do not suppress failing tests just to get green unless user explicitly asks.
- When blocked by private repositories, network, credentials, or unavailable infrastructure, stop and report the exact blocker.
