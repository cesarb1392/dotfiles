variable "email" {
  type = string

  validation {
    condition     = can(regex("^\\S+@\\S+\\.\\S+", var.email))
    error_message = "don't match email format"
  }
}

variable "name" {
  type = string
}