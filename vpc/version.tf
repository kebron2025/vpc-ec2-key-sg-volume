terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.79.0"
    }
    
  }
}

terraform {
  backend "s3" {
    bucket = "kb-week7-terraformstatebucket"
    key    = "qa/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}