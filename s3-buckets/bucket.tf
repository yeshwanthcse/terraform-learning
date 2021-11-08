provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region = var.AWS_REGION
}

resource "aws_iam_user" "student-1" {
  name = "student-2"
}

resource "aws_s3_bucket" "tf-fundys-student-1" {
  bucket = "tf-fundys-student-1"
  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "tf-fundys-sameer-dev" {
  bucket = "tf-fundys-sameer-dev"
  versioning {
    enabled = true
  }
}