provider "aws" {
  region = "us-east-2"
}

data "aws_vpc" "sameer"{
  default = true
}

output "foo" {
  value = data.aws_vpc.sameer.id
}
