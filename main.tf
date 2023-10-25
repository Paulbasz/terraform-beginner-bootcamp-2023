terraform {
  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "Terraform-beginner-bootcamping"

  #  workspaces {
  #    name = "Terra-state-13"
  #  }
  #}
  cloud {
    organization = "Terraform-beginner-bootcamping"
   workspaces {
     name = "Terraform-cloud"
   }
  }

}

module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
  index_html_filepath = var.index_html_filepath
  error_html_filepath = var.error_html_filepath
}