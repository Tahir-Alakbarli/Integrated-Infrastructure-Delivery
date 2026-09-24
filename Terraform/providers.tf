provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      ManagedBy = "Terraform"
      Owner     = var.github_owner
      Project   = var.project_name
      Repository = format(
        "https://github.com/%s/%s",
        var.github_owner,
        var.github_repository
      )
    }
  }
}
