terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.16.2"
    }
  }

}
resource "random_string" "bucket_name" {
  lower   = true
  upper = false
  length  = 16
  special = false
}

 resource "aws_s3_bucket" "example" {
  bucket = random_string.bucket_name.result
  
  tags = {
    UserUuid = var.user_uuid
  }
 }
