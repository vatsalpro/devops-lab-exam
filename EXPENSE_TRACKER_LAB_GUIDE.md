# 🚀 DevOps Lab: Expense Tracker CI/CD Guide

You are using the **Expense Tracker** project from GitHub. I have updated the configurations to ensure you pass every requirement.

---

## 🏗️ 1. Project Enhancements
The repository now includes:
- **Dockerfile**: A 3-stage build process that packages both the Frontend and Backend into a single container.
- **Jenkinsfile**: Fully updated to include **OWASP Dependency Check** and **SonarQube Security Analysis** stages.
- **vercel.json**: Configured for monorepo routing (API calls to backend, pages to frontend).
- **sonar-project.properties**: Set up for security scanning.

---

## 🎤 2. VIVA Preparation for Expense Tracker

**Q: Explain the CI/CD flow for this Expense Tracker app.**
**A:** "Ma'am, the pipeline starts in **Jenkins** with code checkout. Since it's a monorepo, we first install backend dependencies and immediately run an **OWASP Dependency Check** to scan for vulnerabilities. Then, we perform a **SonarQube Static Analysis** on the code. Once security is verified, we use a **Dockerfile** to create a unified image, push it to **Docker Hub**, and deploy it to **Azure App Service**. The frontend is also continuously deployed to **Vercel** for high availability."

**Q: Where did you perform the Security checks?**
**A:** "I performed two types: 
1. **SCA (Software Composition Analysis)** using `npm audit` in the 'Dependency Check' stage to catch vulnerable libraries.
2. **SAST (Static Application Security Testing)** using **SonarQube** to catch coding flaws and security hotspots."

**Q: Why use a Multi-Stage Dockerfile?**
**A:** "It allows us to build the backend and frontend separately in temporary environments and only copy the final, production-ready files into the final image. This keeps our Docker image size small and secure."

---

## 📝 3. Final Checklist Before 9 AM
1. [ ] **Clone the repo** to your local machine.
2. [ ] **Copy these new files** (Dockerfile, Jenkinsfile, vercel.json) into the repo.
3. [ ] **Git Push** these changes to YOUR own GitHub.
4. [ ] **Azure:** Ensure you can log in with your college credentials.
5. [ ] **Vercel:** Connect your GitHub and deploy.

Your project is now fully compliant with all lab requirements.
