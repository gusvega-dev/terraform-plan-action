# Terraform Plan Action 🚀

A GitHub Action to automate **Terraform Init & Plan** in CI/CD pipelines.  
🚀 **Terraform Apply is available in the Pro version** → [Upgrade here](https://github.com/marketplace/terraform-apply-action)

## 🔧 Features
✅ Terraform Init  
✅ Terraform Plan  
❌ Terraform Apply (*Available in the Pro version*)  

## 🚀 Usage
```yaml
name: "Terraform CI/CD"
on:
  push:
    branches:
      - main

jobs:
  terraform:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Repo
        uses: actions/checkout@v3

      - name: Terraform Plan
        uses: gusvega-dev/terraform-plan-action@main
        with:
          tf_version: "1.5.6"
