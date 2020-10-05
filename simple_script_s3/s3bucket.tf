provider "aws" {
  version = "3.9.0"

  region = var.aws_region
}



variable "aws_region" {
  type    = string
  default = "us-east-1"

resource "aws_s3_bucket" "terraform-s3" {

bucket = "terraform-s3-testing"



versioning {

enabled = true

}



lifecycle {

prevent_destroy = true

}



tags {

Name = "S3 Remote store"

}

}
