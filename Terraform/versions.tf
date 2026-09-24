terraform {
  required_version = ">= 1.16.2, < 1.17.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 6.62.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "= 4.4.1"
    }
  }
}
