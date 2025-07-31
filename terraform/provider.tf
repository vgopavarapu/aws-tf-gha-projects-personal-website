provider "aws" {
  
  
}
terraform {
  backend "s3" {
    bucket         = "tf.resources.gha"
    key            = "github-actions/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf.resources.gha.lock"
  }
}