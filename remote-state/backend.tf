terraform {
  backend "s3" {
    bucket = "terraform-backend-frtt1"
    key = "remote-state-demo"
  }
}