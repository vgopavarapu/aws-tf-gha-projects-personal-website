provider "aws" {
  
}
terraform {
  backend "s3" { 
    bucket = "tf-resource-gha"
    key    = "github-actions/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "tf.resource.gha.lock"
  }
}