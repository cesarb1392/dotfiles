variable "email" {
  type = string

  validation {
    condition     = can(regex("^\\S+@\\S+\\.\\S+", var.email))
    error_message = "Don't match email format."
  }
}

variable "name" {
  type = string
}