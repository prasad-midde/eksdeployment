**Jenkins DevSecOps Pipeline**

Kubernetes  Jenkins DevSecOps pipeline using open source security vulnerability scanning tools.

This DevSecOps pipeline uses different tools that can be used to deploy an application to EKS cluster
Below are the tools details

Hadolint - Dockerfile linter, validate inline bash, written in Haskell

Git-Secret - Checks whether Developer is checking any sensitive information to code repositories

Trivy  - SCA and SAST 

ECR Scanning - In-built feature

OWASP - Dynamic Application Security test - DAST

Falco - Runtime Application Self Protection - RASP



It is highly recommended to fully test the pipeline in lower environments and adjust as needed before deploying to production.
