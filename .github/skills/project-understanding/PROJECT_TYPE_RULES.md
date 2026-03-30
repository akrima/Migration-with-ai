# Project type rules

Treat as Lambda when one or more of the following are true:
- AWS Lambda handler classes are present
- `RequestHandler` or `RequestStreamHandler` is present
- aws-lambda Java dependencies are present
- event-driven handler architecture is dominant

Treat as EKS when one or more of the following are true:
- `@SpringBootApplication` is present
- Spring Boot starters are present
- controller/service/repository web service architecture is dominant
- containerized application structure is present

If both patterns exist:
- document the dominant runtime model
- explain whether the repository contains mixed workloads or support modules
