variable "foo" {
  type = string
  default = "Some value"
}

resource "null_resource" "bar" {
  provisioner "local-exec" {
    command = "echo ${var.foo}"
  }
}