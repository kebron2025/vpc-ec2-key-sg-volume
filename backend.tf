terraform {
  backend "s3" {
    bucket = "kb-week7-terraformstatebucket"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}