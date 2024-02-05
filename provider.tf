

terraform {

  required_providers {

    aws = {

      source = "hashicorp/aws"

      version = "~> 5.33.0"
    }

  }

}
provider "aws" {
  region     = "ap-south-1"


  default_tags {
    tags = {
      "project" = var.project
      "env"     = var.env
    }
  }
}
