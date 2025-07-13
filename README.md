# MY FIRST TERRAFORM PROJECT – Launch an EC2 Instance on AWS


## Project Overview
This project uses **Terraform** to provision a virtual machine (**EC2 instance**) on **Amazon Web Services (AWS)**. It's a beginner-friendly setup to help you get comfortable with Infrastructure as Code (IaC).


### What This Project Does

- Connects to your AWS account using locally stored credentials
- Launches a free-tier EC2 instance (Amazon Linux 2, t2.micro)
- Uses AWS as the cloud provider
- _Note: This project does **not** include SSH access (no key pair used)_

---


## Prerequisites
Before you can run this project, make sure you have:

1. An active [AWS account](https://aws.amazon.com/)
2.  AWS CLI installed and configured
3. [Terraform installed](https://developer.hashicorp.com/terraform/downloads)
4. A terminal (like Command Prompt, PowerShell, Terminal, or VS Code)

---


## Created this project manually using VS Code:


### Step 1: Set Up Your AWS Credentials

1. Log into your [AWS Console](https://console.aws.amazon.com/)
2. Go to **IAM > Users**
3. Click your user name
4. Open the **Security Credentials** tab
5. Under **Access Keys**, click **Create access key**
6. Note down:
   - _**Access Key ID**_
   - _**Secret Access Key**_


### Step 2: Configure AWS CLI

In your terminal, run:
```bash
aws configure
```
Enter:

    Access Key ID
    Secret Access Key
    Default region (e.g. us-east-1)
    Output format (e.g. json or press Enter)

This saves your credentials locally for Terraform to access securely.


### Step 3: Create Your Project Folder and Terraform Files

```bash
mkdir (project folder)
cd (project folder)
```
This creates a new folder for your Terraform project and moves into it.


### Step 4: Open the Folder in VS Code

```bash
code .
```
This opens the project folder in VS Code, making it easy to create and manage your files.


### Step 5: Create Terraform Configuration Files in the Folder

File Descriptions

| File Name       | Purpose |
|----------------|---------|
| `provider.tf`   | Tells Terraform to use AWS as the cloud provider |
| `main.tf`       | Contains the resource (EC2 instance) to create |
| `variables.tf`  | Defines all input variables |


### Step 6: Initialize Terraform

In the project folder, run:
```bash
terraform init
```
This sets up the project by downloading the AWS provider plugin.


### Step 7: Preview the Infrastructure Plan

To see what Terraform will create, run:
```bash
terraform plan
```
This helps you review the resources that will be provisioned before making any changes.


### Step 8: Apply the Terraform Configuration

To create your EC2 instance, run:
```
terraform apply
```
Terraform will display the plan again and ask you to confirm. Type yes and press Enter to proceed.


### Step 9: Verify the EC2 Instance

1. Go to your AWS EC2 Dashboard
2. Click Instances in the left-hand menu
3. You should see your new instance running

## Clean Up (Destroy the Infrastructure)

To avoid AWS charges, destroy the resources when you're done:
```
bash
terraform destroy
```
Type yes to confirm and Terraform will remove everything it created.





