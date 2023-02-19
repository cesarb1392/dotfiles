resource "local_file" "gitignore_global" {
  content = file("${path.module}/files/.gitignore_global")

  filename = pathexpand("~/.gitignore_global")
}

resource "local_file" "gitconfig" {
  content = templatefile("${path.module}/files/.gitconfig", {
    email = var.email
    name  = var.name
  })

  filename = pathexpand("~/.gitconfig")
}
