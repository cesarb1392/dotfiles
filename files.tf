locals {
  files = {
    ssh_config = {
      content  = file("${path.module}/files/ssh_config")
      filename = pathexpand("~/.ssh/config")
    }
    mtmr = {
      content  = file("${path.module}/files/mtmr.json")
      filename = pathexpand("~/Library/Application Support/MTMR/items.json")
    }
    gitignore_global = {
      content  = file("${path.module}/files/.gitignore_global")
      filename = pathexpand("~/.gitignore_global")
    }
    gitconfig = {
      content = templatefile("${path.module}/files/.gitconfig", {
        email = var.email
        name  = var.name
      })
      filename = pathexpand("~/.gitconfig")
    }
    aws_logout = {
      content  = file("${path.module}/files/aws_logout.scpt")
      filename = pathexpand("~/scripts/aws_logout.scpt")
    }

    zshrc = {
      content  = file("${path.module}/files/.zshrc")
      filename = pathexpand("~/.zshrc")
    }
    zshenv = {
      content  = file("${path.module}/files/.zshenv")
      filename = pathexpand("~/.zshenv")
    }
    zsh_aliases = {
      content  = file("${path.module}/files/.zsh_aliases")
      filename = pathexpand("~/.zsh_aliases")
    }
    fzf_zsh = {
      content  = file("${path.module}/files/.fzf.zsh")
      filename = pathexpand("~/.fzf.zsh")
    }
    starship = {
      content  = file("${path.module}/files/starship.toml")
      filename = pathexpand("~/.config/starship.toml")
    }
  }
}

resource "local_file" "files" {
  for_each = local.files

  content  = each.value.content
  filename = each.value.filename

  depends_on = [terraform_data.zsh]
}
