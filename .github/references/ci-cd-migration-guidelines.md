# CI/CD migration guidelines
- Document the current CI/CD layout before changing it.
- Keep build, test, scan, package, and deploy stages explicit.
- Update Java and Maven versions consistently across CI.
- Preserve existing enterprise-specific settings and private registry configuration.
- Do not remove quality gates silently.
- Document every workflow change in the migration comparison report.
