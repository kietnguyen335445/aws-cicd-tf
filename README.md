# aws-cicd-tf
🚀 Terraform AWS VPC Deployment with GitLab CI/CD

📌 Features

Automated VPC Deployment: Uses Terraform to create AWS VPC with subnets, internet gateways.

GitLab CI/CD Integration: Automates validation, planning, applying, and destroying infrastructure.

Manual Approval for Deployment & Destruction: Prevents unintended changes.

✅ Prerequisites

1. AWS Account with IAM permissions to create VPC resources.

2. Terraform Installed locally (for testing).

3. GitLab Repository with CI/CD enabled.

4. GitLab CI/CD Variables configured for AWS credentials.

🛠 Setup Instructions

1️⃣ Configure AWS Credentials in GitLab

Navigate to GitLab > Your Project > Settings > CI/CD > Variables.

Add the following variables:

AWS_ACCESS_KEY_ID: Your AWS Access Key ID.

AWS_SECRET_ACCESS_KEY: Your AWS Secret Access Key.

AWS_REGION: ap-southeast-1 (or your preferred AWS region).
