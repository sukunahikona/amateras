###############################################################################
# ECR Outputs
###############################################################################
output "ecr_repository_url" {
  description = "ECR repository URL for spring-batch-app-v1"
  value       = module.ecr.repository_url
}

output "ecr_repository_name" {
  description = "ECR repository name for spring-batch-app-v1"
  value       = module.ecr.repository_name
}

output "ecr_repository_arn" {
  description = "ECR repository ARN for spring-batch-app-v1"
  value       = module.ecr.repository_arn
}
