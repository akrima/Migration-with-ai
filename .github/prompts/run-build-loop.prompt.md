---
name: run-build-loop
agent: build-fixer
description: Run Maven clean install using settings.xml and fix failures until the build passes.
---

Locate `settings.xml` at repository root.
If not found, ask the user for the correct root folder or settings path.
Then run `mvn clean install -s settings.xml` and keep fixing failures until the build passes or an external blocker is identified.
