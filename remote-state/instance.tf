resource "aws_instance" "demo-1"{
  ami = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.demo-1.private_ip}"
  }
}

output "ip" {
  value = "${aws_instance.demo-1.public_ip}"
}