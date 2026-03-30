---
name: build-and-verify
description: Locate settings.xml, run Maven clean install, fix failures, and iterate until success or a real external blocker appears.
---

# Build And Verify Skill

## Workflow
1. Detect repository root.
2. Check for `settings.xml`.
3. If missing, ask user for root directory or settings path.
4. Run build.
5. Parse failures.
6. Apply minimal fixes.
7. Retry.
8. Log each iteration.

See `CHECKLIST.md` and `BUILD_RULES.md`.
