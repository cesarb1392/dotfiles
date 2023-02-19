resource "local_file" "ssh_config" {
  content = file("${path.module}/files/ssh_config")

  filename = pathexpand("~/.ssh/config")
}