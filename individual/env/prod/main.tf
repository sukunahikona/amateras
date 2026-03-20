###############################################################################
# Modules
###############################################################################
module "ecr" {
  source = "../../modules/ecr"

  project     = var.project
  environment = var.environment
}

module "iam" {
  source = "../../modules/iam"

  project            = var.project
  environment        = var.environment
  github_org         = var.github_org
  github_repo        = var.github_repo
  ecr_repository_arn = module.ecr.repository_arn
}
