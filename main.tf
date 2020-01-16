variable "size" {
  type = string
  default = 10
}

# module 1 generates a random alphabetical string
resource "random_string" "rnd1" {
  special = false
  number = false
  upper = false
  length  = var.size
}

output "module1-output" {
    value = "Module1: ${random_string.rnd1.result}"
}