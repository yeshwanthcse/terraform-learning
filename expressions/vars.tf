variable "users" {
  type = map(object({
    is_admin = bool,
    deptt    = string
  }))
}

variable "employee" {
  type = object({ name = string, age = number })
}