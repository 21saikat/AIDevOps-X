# AIDevOps-X
AI-Powered DevOps Bot using Azure, Kubernetes, Terraform & OpenAI

---

##  Overview

**AIDevOps-X** is an end-to-end project that automates the deployment of a containerized Flask app on Azure Kubernetes Service (AKS), integrates CI/CD pipelines with GitHub Actions, provisions infrastructure using Terraform, monitors resources with Grafana, and leverages Azure OpenAI to build an intelligent ChatOps bot for DevOps insights.

---

## 📁 Project Structure

```bash
AIDevOps-X/
│
├── infra/                   # Terraform IaC files for Azure resources (AKS, VNet, etc.)
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── ...
│
├── app/                     # Flask application code
│   ├── app.py
│   ├── requirements.txt
│   └── ...
│
├── .github/workflows/       # GitHub Actions CI/CD pipelines
│   └── main.yml
│
├── charts/                  # Helm chart for Kubernetes deployment
│   └── ...
│
├── grafana/                 # Dashboards and monitoring setup
│   └── ...
│
├── bot/                     # AI ChatOps bot with Azure OpenAI integration
│   ├── bot.py
│   ├── prompt_template.txt
│   └── ...
│
├── Dockerfile               # Containerization for Flask App
├── README.md                # Project documentation
└── .env.example             # Environment variables template
