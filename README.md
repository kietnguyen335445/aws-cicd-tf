🚀 DEPLOY A COMPLETE VPC ON AWS USING TERRAFORM AND GITLAB CI/CD

## 📌 Features

- **Automated VPC Deployment**: Uses Terraform to create AWS VPC with subnets,security group, nat gateway, route table, internet gateways.
- **GitLab CI/CD Integration**: Automates validation, planning, applying, and destroying infrastructure.
- **Manual Approval for Deployment & Destruction**: Prevents unintended changes.

## ✅ Prerequisites

1. **AWS Account**: Ensure you have IAM permissions to create VPC resources.
2. **Terraform**: Install Terraform locally for testing.
3. **GitLab Repository**: Ensure CI/CD is enabled.
4. **CI/CD Variables**: Configure GitLab CI/CD variables for AWS credentials.

## 🛠 Setup Instructions

### 1️⃣ Configure AWS Credentials in GitLab

Navigate to GitLab > Your Project > Settings > CI/CD > Variables.

Add the following variables:

- `AWS_ACCESS_KEY_ID`: Your AWS Access Key ID.
- `AWS_SECRET_ACCESS_KEY`: Your AWS Secret Access Key.
- `AWS_REGION`: Your preferred AWS region (e.g., `ap-southeast-1`).

### 2️⃣ Clone the Repository

```sh
git clone https://github.com/kietnguyen335445/aws-cicd-tf.git
cd aws-cicd-tf
```
3️⃣ Initialize Terraform
```sh
terraform init
```
4️⃣ Validate Terraform Configuration
```sh
terraform validate
```
5️⃣ Plan the Infrastructure Changes
```sh
terraform plan --var-file "terraform.tfvars"
```
6️⃣ Apply the Infrastructure Changes
```sh
terraform apply --var-file "terraform.tfvars"
```
## Destroying Resources

To destroy the resources created by this Terraform configuration, run the following command:

```bash
terraform destroy --var-file "terraform.tfvars"
```
📜 GitLab CI/CD Pipeline
The .gitlab-ci.yml file defines the CI/CD pipeline for this project. It includes the following stages:

Validate: Checks the Terraform configuration for syntax errors.

Plan: Generates an execution plan for Terraform changes.

Apply: Applies the changes to the infrastructure (requires manual approval).

Destroy: Destroys the infrastructure (requires manual approval).


![Capádqưqưqưture](https://github.com/user-attachments/assets/1eca2ffb-5b4a-4cd4-8f92-b34b186be811)

























