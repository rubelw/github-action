provider "aws" {
  region                  = "${var.aws_region}"
}

resource "aws_s3_bucket" "tfbucket" {
  bucket        = "wills-github-actions"
  acl           = "private"
  force_destroy = true

  tags {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

