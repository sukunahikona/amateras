terraform {
  backend "s3" {
    bucket  = "amateras-terraform-state"
    key     = "individual/env/prod/terraform.tfstate"
    region  = "ap-northeast-1"
    encrypt = true
  }
}
