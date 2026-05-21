# 🚀 DevOps Lab Exam: Complete CI/CD VIVA & Setup Guide

This folder contains everything you need to successfully execute and explain your DevOps project to the examiner.

---

## 🛠️ Step 1: What You Need To Do TONIGHT (At Home)

1. **Create a GitHub Repository:**
   - Go to GitHub and create a new public repository named `devops-lab-exam`.
   - Push all the files in this folder to that repository.
   ```bash
   git init
   git add .
   git commit -m "Initial commit for DevOps lab exam"
   git branch -M main
   git remote add origin <your-github-repo-url>
   git push -u origin main
   ```

2. **Deploy on Vercel (Takes 2 minutes):**
   - Go to [Vercel.com](https://vercel.com) and log in with GitHub.
   - Click **Add New -> Project**.
   - Import your `devops-lab-exam` repository.
   - Leave all settings as default and click **Deploy**.
   - *Result:* Your website is now live! Save the URL for tomorrow. (The `vercel.json` file automatically configures it).

3. **Verify Azure Login:**
   - Go to the [Azure Portal](https://portal.azure.com).
   - **Crucial Tip:** If you cannot log in with your personal email, **use your college ID credentials**. Ma'am specifically mentioned this!
   - Ensure you can see "App Services" or "Web Apps" inside Azure.

4. **Verify Docker:**
   - Ensure Docker Desktop is running on your machine.
   - Run `docker build -t myapp .` in this folder just to ensure it builds successfully.

---

## 🎤 Step 2: How to Explain the Pipeline (The VIVA)

Tomorrow, ma'am will ask you to open a platform (Jenkins, GitHub, Docker, or Azure) and explain the workflow. 

### The Grand Explanation (Memorize this flow):
> *"Ma'am, I have implemented a complete end-to-end Continuous Integration and Continuous Deployment (CI/CD) pipeline. 
> 
> When a developer pushes code to **GitHub**, it automatically triggers a webhook. 
> **Jenkins** picks up this code and runs through multiple stages defined in my **Jenkinsfile**. 
> First, it installs dependencies. Then it runs an **OWASP Dependency Check** to ensure no vulnerable libraries are used. After that, it runs a **SonarQube Analysis** to check for code quality and security bugs. 
> Once the code passes security checks, Jenkins builds a **Docker Image** using my Dockerfile, and pushes it to the Docker Registry. 
> Finally, the pipeline automatically deploys this containerized application to **Microsoft Azure App Services**. 
> Simultaneously, for frontend/API edge hosting, the project is also automatically deployed to **Vercel** via GitHub integration."*

---

## ❓ Potential VIVA Questions & Answers

**Q1: Where did you perform the Dependency Check?**
**Answer:** "I implemented the dependency check in my Jenkinsfile under the 'OWASP Dependency Check' stage. It scans the `package.json` to identify any known vulnerabilities (CVEs) in third-party libraries before we build the Docker image."

**Q2: How did you implement Vulnerability/Security Checks?**
**Answer:** "I used **SonarQube** for static code analysis. In my project, I created a `sonar-project.properties` file that defines the rules, and Jenkins runs the SonarQube Scanner stage to catch security hotspots, bugs, and code smells."

**Q3: What does your Dockerfile do?**
**Answer:** "It uses a lightweight Node.js Alpine base image. It copies my `package.json`, installs production dependencies, copies my source code, exposes port 3000, and finally runs my Node.js server. It packages my entire application so it can run reliably anywhere."

**Q4: Explain your Jenkinsfile.**
**Answer:** "My Jenkinsfile uses Declarative Pipeline syntax. It has 7 main stages: 
1. Checkout code from GitHub 
2. Install dependencies 
3. Run Dependency Vulnerability Check 
4. Run SonarQube Security scan 
5. Build the Docker Image 
6. Push to Docker Hub 
7. Deploy to Azure."

**Q5: How is your app hosted on Azure?**
**Answer:** "It is hosted using Azure App Service (Web App for Containers). Jenkins pushes the final Docker image to a registry, and Azure App Service pulls that exact image and runs it."

**Q6: What is the role of Vercel here?**
**Answer:** "Vercel provides a modern edge-network deployment. I added a `vercel.json` configuration file which tells Vercel to host my Node Express app as a serverless function automatically whenever code is pushed to GitHub."

---

### Best of luck for tomorrow! Remember: Confidence is key during the Viva!