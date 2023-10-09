terraform {
  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "Terraform-beginner-bootcamping"

  #  workspaces {
  #    name = "Terra-house-13"
  #  }
  #}
   #cloud {
    # organization = "Terraform-beginner-bootcamping"
     #workspaces {
      # name = "Terra-state-13"
     #}
  #}
  required_providers {
    
    aws = {
      source = "hashicorp/aws"
      version = "5.16.2"
    }
  }
}

provider "aws" {
}
provider "random" {
  # Configuration options
}