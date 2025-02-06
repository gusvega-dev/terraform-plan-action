#!/bin/sh

set -e  # Exit on error

TF_VERSION=$1
WORKDIR=$2  # New input for working directory

echo "📢 Setting up Terraform version $TF_VERSION..."
tfenv install $TF_VERSION
tfenv use $TF_VERSION

# Change to the specified working directory
cd "$WORKDIR"

echo "🏗 Running Terraform Init..."
terraform init

echo "📊 Running Terraform Plan..."
terraform plan -out=tfplan

echo "⚠️ Terraform Apply is available in the Pro version!"
echo "Upgrade at: https://github.com/marketplace/terraform-apply-action"

exit 0
