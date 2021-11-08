locals {
  admin_users   = {
  for name, user in var.users : name => user
  if user.is_admin
  }
  regular_users = {
  for name, user in var.users : name => user
  if !user.is_admin
  }
  counter = 2
}

output "admins" {
  value = local.admin_users
}

output "counter_ex" {
  value = local.counter
}

output "guests" {
  value = local.regular_users
}

output "davids_age" {
  value = var.employee.age
}

output "john_ex" {
  value = lookup(var.users, "danielle")
}