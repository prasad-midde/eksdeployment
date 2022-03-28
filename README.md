****Jenkins DevSecOps Pipeline****

**DevSecOps Tools**

There are various DevSecOps tools available in the Market below are the few tools which we have used for this demo purpose.

**Hadolint** :  Dockerfile linter, validate inline bash, written in Haskell

**Git-Secret** :  Checks whether Developer is checking any sensitive information to code repositories

**Checkov** : Checkov scans cloud infrastructure configurations to find misconfigurations before they're deployed. Checkov uses a common command line interface to manage and analyze infrastructure as code (IaC) scan results across platforms such as Terraform, CloudFormation, Kubernetes, Helm, ARM Templates and Serverless framework

**Trivy** : Trivy ( tri pronounced like trigger, vy pronounced like envy) is a simple and comprehensive scanner for vulnerabilities in container images, file systems, and Git repositories, as well as for configuration issues. Trivy detects vulnerabilities of OS packages (Alpine, RHEL, CentOS, etc.)   – SCA and SAST

**ECR scanning** : Inbuilt tool by AWS to check image vulnerability

**OWASP** - Dynamic Application Security test - DAST

**Falco** - Runtime Application Self Protection - RASP


**DevSecOps Security Check Stages**

Security check consist of three stages, which are as follows,

**Secret analysis:** 
	
	To analyze the developer or user not passing the secrets to git repository , to analyze and find users not passing the secrets following tools can be used ,git secrets,trufflehog.

**Static application security testing (SAST):**

	In static application security testing , the code and vulnerability can be detected without running that application code,
It helps to analyze the threats before the deployment, it helps to implement the best security practice .To perform the static application security testing user can use following tools, checkov, hadolint, trivy.

**Dynamic application security testing(DAST):**

	Dynamic application security testing, this security check carried out when the application is running , application tested against attacks to get the result and analyze the security threats, and checking if the application is prone to security attacks or not.. For carrying out the DAST, owasp zap can be used.
	
**Runtime application self protection (RAST) :**
	
	RASP is a technology that runs on a server and kicks in when an application runs. It's designed to detect attacks on an application in real time. When an application begins to run, RASP can protect it from malicious input or behavior by analyzing both the app's behavior and the context of that behavior. By using the app to continuously monitor its own behavior, attacks can be identified and mitigated immediately without human intervention.
For RAST falco can be used.


***Open Source DevSecOps architecture***


![devsecops-Opensource](https://user-images.githubusercontent.com/85602800/160404377-31ddb374-1b06-47c6-b936-2bd955c99385.png)

	

It is highly recommended to fully test the pipeline in lower environments and adjust as needed before deploying to production.
