output "aws_region" {
  description = "AWS region containing the deployment"
  value       = var.aws_region
}

output "ecr_repository_url" {
  description = "ECR repository URL used by the delivery workflow"
  value       = aws_ecr_repository.application.repository_url
}

output "eks_cluster_name" {
  description = "EKS cluster name used by the delivery workflow"
  value       = aws_eks_cluster.main.name
}

output "github_actions_role_arn" {
  description = "IAM role ARN to store as the GitHub Actions variable AWS_ROLE_ARN"
  value       = aws_iam_role.github_actions.arn
}

output "vpc_id" {
  description = "VPC identifier"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "Public subnet identifiers"
  value       = aws_subnet.public[*].id
}
