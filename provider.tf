

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
 #access_key = "AKIA5FTZFHFSSKJFNC5R"
 # secret_key = "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"

  default_tags {
    tags = {
      "project" = var.project
      "env"     = var.env
    }
  }
}