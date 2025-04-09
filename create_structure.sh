#!/bin/bash

# Root folder name
ROOT_FOLDER="learning-journey"

# Create directory structure
mkdir -p $ROOT_FOLDER/{cloud,devops,backend/django,frontend/vuejs,frontend/quasar-vuetify,database,projects,django_app}

# Create main README
cat > $ROOT_FOLDER/README.md <<EOL
# 🌟 Learning Journey

This repository documents my hands-on learning across modern technologies including Django, Vue.js, DevOps tools, and Cloud platforms.

## 📁 Sections
- Cloud
- DevOps
- Backend
- Frontend
- Database
- Projects
- Django App (for hosting content)
EOL

# Helper function to create markdown files with basic template
create_md_file() {
  FILE=$1
  TITLE=$2
  cat > $FILE <<EOL
# $TITLE

## 🧠 Concepts

## 🛠️ Setup / Usage

## 💡 Real World Use

## 📌 Commands / Code

## ✅ Key Learnings

## 📚 References

EOL
}

# Cloud
create_md_file "$ROOT_FOLDER/cloud/aws.md" "AWS"
create_md_file "$ROOT_FOLDER/cloud/azure.md" "Azure"
create_md_file "$ROOT_FOLDER/cloud/gcp.md" "GCP"

# DevOps
create_md_file "$ROOT_FOLDER/devops/cicd-pipeline.md" "CI/CD Pipelines"
create_md_file "$ROOT_FOLDER/devops/airflow.md" "Apache Airflow"
create_md_file "$ROOT_FOLDER/devops/jenkins.md" "Jenkins"
create_md_file "$ROOT_FOLDER/devops/azure-devops.md" "Azure DevOps"
create_md_file "$ROOT_FOLDER/devops/scalability.md" "Scalability"
create_md_file "$ROOT_FOLDER/devops/containerization.md" "Containerization"

# Backend - Django
create_md_file "$ROOT_FOLDER/backend/django/basics.md" "Django Basics"
create_md_file "$ROOT_FOLDER/backend/django/advanced.md" "Advanced Django"
create_md_file "$ROOT_FOLDER/backend/django/api-development.md" "Django API Development"

# Frontend - Vue.js and Quasar/Vuetify
create_md_file "$ROOT_FOLDER/frontend/vuejs/basics.md" "Vue.js Basics"
create_md_file "$ROOT_FOLDER/frontend/vuejs/vuex-routing.md" "Vuex and Routing"
create_md_file "$ROOT_FOLDER/frontend/quasar-vuetify/quasar-intro.md" "Quasar Framework"
create_md_file "$ROOT_FOLDER/frontend/quasar-vuetify/vuetify-notes.md" "Vuetify UI Library"

# Database
create_md_file "$ROOT_FOLDER/database/postgresql.md" "PostgreSQL"

# Projects
create_md_file "$ROOT_FOLDER/projects/skill-matrix-app.md" "Skill Matrix App"
create_md_file "$ROOT_FOLDER/projects/mini-cloud-deployment.md" "Mini Cloud Deployment"

echo "✅ Folder and file structure created in: $ROOT_FOLDER"
