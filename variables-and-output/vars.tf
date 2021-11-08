variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    type = string
    default = "us-east-2"
}
variable "names" {
    type = list(string)
    default = ["some", "random", "list"]
}
variable "AMIS" {
    type = map(any)
    default = {
        us-east-1 = "ami-0e011417bd70948da"
        us-east-2 = "ami-07d260383322907b0"
    }
}