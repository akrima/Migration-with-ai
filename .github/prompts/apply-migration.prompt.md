---
name: apply-migration
agent: orchestrator
description: Apply approved fixes and optional Java/framework migration.
---

Use the existing reports in `docs/ai/`.
Ask:
1. Do you want to apply the quality report?
2. If yes, do you want to migrate Java to 25?

If approved:
- generate `docs/ai/migration-plan.md`
- apply fixes
- modernize versions where approved
- run build verification
- generate `docs/ai/migration-comparison.md`
