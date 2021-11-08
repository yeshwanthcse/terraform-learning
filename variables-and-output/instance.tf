resource "aws_instance" "demo-1"{
  ami = lookup(var.AMIS, var.AWS_REGION)
  #lookup for var.AWS_REGION inside var.AMIS
  # var.AMIS.get(var.AWS_REGION)
  instance_type = "t2.micro"
#  provisioner "local-exec" {
#    command = "echo ${aws_instance.demo-1.private_ip}"
#  }
}

resource "aws_s3_bucket" "demo-bucket" {
  bucket_prefix = "variables-demo"
  versioning {
    enabled = true
  }
}

output "ip" {
  value = aws_instance.demo-1.private_ip
}

output "bucket_name" {
  value = aws_s3_bucket.demo-bucket.bucket
}


#resource "aws_s3_bucket_object" "obj" {
#  bucket = outputs.bucket_name
#  key    = ""
#}