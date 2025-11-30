# Terraform VPC + EKS Cluster Deployment

Цей проєкт створює інфраструктуру AWS для ML-сервісів, використовуючи модулі Terraform:
 - terraform-aws-modules/vpc/aws
 - terraform-aws-modules/eks/aws

Компоненти інфраструктури:
 - VPC з public та private сабнетами, NAT та Internet Gateway
 - Kubernetes-кластер EKS у регіоні eu-north-1
 - дві node groups (cpu і gpu на t3.micro)
 - віддалений state у S3

## Pre Set Up

terraform:
```
brew install hashicorp/tap/terraform
```

kubectl:
```
brew install kubectl
```

AWS Profile:
1. Create IAM User
2. Generate Access Key 
3. Attach IAM Policies:
 - AdministratorAccess
 - AmazonS3FullAccess
4. Configure AWS CLI profile
```
aws configure --profile hannadunska
```
5. Create S3 bucket for Terraform backend:
```
aws s3api create-bucket \
  --bucket mlops-tfstate-hanna \
  --region eu-north-1 \
  --create-bucket-configuration LocationConstraint=eu-north-1 \
  --profile hannadunska
```

## Project Structure

```
eks-vpc-cluster/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tf
├── backend.tf
├── vpc/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── terraform.tf
│   └── backend.tf
├── eks/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── terraform.tf
│   └── backend.tf
└── README.md
```

## Створення VPC
```
terraform init
```
![VPC init](./screenshots/vpc_init.png)
```
terraform plan
```
![VPC plan](./screenshots/vpc_plan.png)
```
terraform apply
```
![VPC apply](./screenshots/vpc_apply.png)

## Створення EKS
```
terraform init
```
![EKS init](./screenshots/eks_init.png)
```
terraform plan
```
![EKS plan](./screenshots/eks_plan.png)
```
terraform apply
```
![EKS apply](./screenshots/eks_apply.png)

## Перевірка доступу до кластера
```
aws eks \
  --region eu-north-1 \
  --profile hannadunska \
  update-kubeconfig --name goit-eks
```
![Kubectl Nodes](./screenshots/cluster_check.png)

## Перевірка нод
```
kubectl get nodes
```
![Kubectl Nodes](./screenshots/get_nodes.png)