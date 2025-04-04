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
![Untitled](https://github.com/user-attachments/assets/609bff14-b236-4c35-8ff4-528a09f83677)

5️⃣ Plan the Infrastructure Changes
```sh
terraform plan --var-file "terraform.tfvars"
```
![plan1](https://github.com/user-attachments/assets/17a387ba-5c02-430d-b74d-43ecba49a0ff)
![plan2](https://github.com/user-attachments/assets/5f2ec8ad-59ba-4deb-a5e4-773535dc5772)
![plan3](https://github.com/user-attachments/assets/7bc79b6f-92bc-45ed-af89-d12eff4afe45)
![plan4](https://github.com/user-attachments/assets/b17b7665-2eef-440f-9431-75c84055f36f)
![plan5](https://github.com/user-attachments/assets/20b10b61-7e95-4a17-af55-b04a30c67a73)
6️⃣ Apply the Infrastructure Changes
```sh
terraform apply --var-file "terraform.tfvars"
```
![apply](https://github.com/user-attachments/assets/58ce3e23-7455-4307-b5c7-daee85c25fb8)

![aapply](https://github.com/user-attachments/assets/6b5b47c4-f2b4-4452-a2e1-3124ab9fd6f8)


## Destroying Resources


To destroy the resources created by this Terraform configuration, run the following command:

```bash
terraform destroy --var-file "terraform.tfvars"
```
![destroy](https://github.com/user-attachments/assets/9e046799-2ece-4f17-88ff-44e94556a002)


![destroy3](https://github.com/user-attachments/assets/ed4dde6d-e46b-43cb-9d50-6ff9cf21aedb)


📜 GitLab CI/CD Pipeline
The .gitlab-ci.yml file defines the CI/CD pipeline for this project. It includes the following stages:

Validate: Checks the Terraform configuration for syntax errors.

Plan: Generates an execution plan for Terraform changes.

Apply: Applies the changes to the infrastructure (requires manual approval).

Destroy: Destroys the infrastructure (requires manual approval).



























