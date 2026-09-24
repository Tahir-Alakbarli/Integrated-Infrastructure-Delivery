variable "aws_region" {
  description = "AWS region for all resources"
  type        = string
  default     = "eu-central-1"
}

variable "project_name" {
  description = "Project tag and resource name prefix"
  type        = string
  default     = "integrated-delivery"
}

variable "cluster_name" {
  description = "Amazon EKS cluster name"
  type        = string
  default     = "integrated-delivery-cluster"
}

variable "kubernetes_version" {
  description = "Amazon EKS Kubernetes version"
  type        = string
  default     = "1.36"
}

variable "ecr_repository_name" {
  description = "Amazon ECR repository name"
  type        = string
  default     = "integrated-infrastructure-delivery"
}

variable "vpc_cidr" {
  description = "IPv4 CIDR block for the VPC"
  type        = string
  default     = "10.20.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "IPv4 CIDR blocks for two public subnets"
  type        = list(string)
  default     = ["10.20.1.0/24", "10.20.2.0/24"]

  validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "Exactly two public subnet CIDR blocks are required."
  }
}

variable "node_instance_types" {
  description = "EC2 instance types for the managed node group"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "node_min_size" {
  description = "Minimum managed node group size"
  type        = number
  default     = 1
}

variable "node_desired_size" {
  description = "Desired managed node group size"
  type        = number
  default     = 1
}

variable "node_max_size" {
  description = "Maximum managed node group size"
  type        = number
  default     = 2
}

variable "github_owner" {
  description = "GitHub repository owner allowed to assume the deployment role"
  type        = string
  default     = "Tahir-Alakbarli"
}

variable "github_repository" {
  description = "GitHub repository allowed to assume the deployment role"
  type        = string
  default     = "Integrated-Infrastructure-Delivery"
}
