variable "size" {
  type = string
  default = 10
}

# module 1 generates a random alphanumeric string
resource "random_string" "rnd" {
  special = false
  number = false
  upper = false
  length  = var.size
}

output "module1-output" {
    value = "Module1: ${random_string.rnd.result}"
}