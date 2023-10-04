terraform {

 cloud {
   organization = "Terraform-beginner-bootcamping"

   workspaces {
     name = "Terra-state-13"
    }
  }
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

provider aws { 
  
}
provider "random" {
  # Configuration options
}