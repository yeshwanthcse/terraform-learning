variable "region" {
  description = "Region for your AWS instance"
}

variable "ami_id" {
  type = string
  description = "AMI ID"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}