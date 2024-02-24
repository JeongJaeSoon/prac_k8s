# Terraformer

## pre-requisites

- EKS cluster provisioning using terraform
- Access to EKS cluster using kubectl
- Terraformer installed

### Install

```bash
$ brew install terraformer
```

## Overview

1. Create Terraform Backend storage in AWS (S3, DynamoDB)
2. Retrieve IaC code for existing EKS Autoscaling resources using Terraformer
3. Create the 2nd EKS NodeGroup using the extracted IaC code
4. Extract IaC code for existing AWS network resources using Terraformer
5. Save and manage the extracted IaC code in Terraform state and configuration files

## Basis Commands

### Create Terraform Backend storage in AWS

1. Transfer the local Terraform state file to the S3 Backend Bucket

   ```bash
   $ aws s3 cp terraform.state s3://<S3 Backend Bucket Name>/<File Name to Save>
   ```

2. Check the object status in the Terraform state file

   ```bash
   $ terraform state list
   ```

3. Check the AWS targets that can be extracted with Terraformer
   - URL : https://github.com/GoogleCloudPlatform/terraformer/blob/master/docs/aws.md

### Extract IaC code for existing EKS Autoscaling resources using Terraformer

1. Extract IaC code for existing EKS Autoscaling resources using Terraformer

   ```bash
   $ terraformer import aws --regions=<Region Name> --resources=<Resource Name> --path-pattern=<Directory Name to Save the Extracted File>
   ```

2. Check the object status in the Terraform state file

   ```bash
   $ terraform state list
   ```

3. Import the extracted Terraform state file to the existing Terraform Backend state file

   ```bash
   $ terraform state mv -state-out=<Path to Save the Existing Terraform Backend State File> <Extracted Terraform Object Name> <Imported Terraform Object Name>
   ```

### Create the 2nd EKS NodeGroup using the extracted IaC code

1. Transfer the local Terraform state file to the S3 Backend Bucket

   ```bash
   $ aws s3 cp terraform.state s3://<S3 Backend Bucket Name>/<File Name to Save>
   ```

2. Switch to the AWS Provider before initialization

   ```bash
    $ terraform state replace-provider -auto-approve registry.terraform.io/-/aws hashicorp/aws
   ```

3. Provisioning and verification

   ```bash
   $ terraform init
   $ terraform plan
   $ terraform apply
   ```

### Extract IaC code for existing AWS network resources using Terraformer

1. Download the local Terraform state file from the S3 Backend Bucket

   ```bash
   $ aws s3 cp s3://<S3 Backend Bucket Name>/<File Name to Save> <Local Download Path>
   ```

2. Extract IaC code for existing AWS network resources using Terraformer

   ```bash
   $ terraformer import aws --regions=<Region Name> --resources=<Resource Name> --path-pattern=<Directory Name to Save the Extracted File>
   ```

3. Check the object status in the Terraform state file

   ```bash
   $ terraform state list
   ```

4. Import the extracted Terraform state file to the existing Terraform Backend state file

   ```bash
    $ terraform state mv -state-out=<Path to Save the Existing Terraform Backend State File> <Extracted Terraform Object Name> <Imported Terraform Object Name>
   ```

### Save and manage the extracted IaC code in Terraform state and configuration files

1. Upload the local Terraform state file to the S3 Backend Bucket

   ```bash
   $ aws s3 cp terraform.state s3://<S3 Backend Bucket Name>/<File Name to Save>
   ```

2. Switch to the AWS Provider before initialization

   ```bash
    $ terraform state replace-provider -auto-approve registry.terraform.io/-/aws hashicorp/aws
   ```

3. Provisioning and verification

   ```bash
   $ terraform init
   $ terraform plan
   $ terraform apply
   ```
