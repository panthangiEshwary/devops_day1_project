Step 1: Create a project folder
mkdir devops_day1_project
cd devops_day1_project

Step 2: Initialize Git repo
git init

Step 3: Created a simple script
Created a file hello_devops.sh:

touch hello_devops.sh
chmod +x hello_devops.sh

Open it and add:
#!/bin/bash
echo "Hello DevOps!"
date
This script prints "Hello DevOps!" and the current date/time.

Step 4: Run the script
./hello_devops.sh

You should see:
Hello DevOps!
Thu Sep 4 11:00:00 IST 2025

Step 5: Commit your script to Git
git add hello_devops.sh
git commit -m "Add first DevOps script"
git status
git log

Check the log to see your commit history.


Goal:

***Automate your Day 1 script so that every time you push changes to GitHub, it runs automatically***

 Create a GitHub Repository

Go to GitHub
Click New Repository → Name it devops_day1_project
Initialize without README (we already have local repo)
Copy the remote URL

Connect Local Repo to GitHub
git remote add origin <your-github-repo-url>
git branch -M main
git push -u origin main

Check GitHub to ensure your hello_devops.sh is uploaded.

Add GitHub Actions Workflow
In your project, create a folder .github/workflows/
Inside, create run_script.yml:

mkdir -p .github/workflows
nano .github/workflows/run_script.yml

 Commit and push
git add .github/workflows/run_script.yml
git commit -m "Add GitHub Actions workflow to run script"
git push origin main


Verify CI/CD

Go to GitHub → Actions
You should see the workflow running automatically
Check the logs; it should display:
Hello DevOps!
Thu Sep 4 11:00:00 IST 2025
