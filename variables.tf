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

variable "signingkey" {
  type = string
}

variable "ssh_hosts" {
  type = list(object({
    name               = string
    address            = string
    user               = string
    identity_file_path = string
    port               = optional(number)
  }))
}