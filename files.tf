locals {
  files = {
    ssh_config = {
      content  = file("${path.module}/files/ssh_config")
      filename = pathexpand("~/.ssh/config")
    }
    /* mtmr = {
      content  = file("${path.module}/files/mtmr.json")
      filename = pathexpand("~/Library/Application Support/MTMR/items.json")
    } */
    gitignore_global = {
      content  = file("${path.module}/files/.gitignore_global")
      filename = pathexpand("~/.gitignore_global")
    }
    # setup manually configuring gpg key
    # gitconfig = {
    #   content = templatefile("${path.module}/files/.gitconfig", {
    #     email      = var.email
    #     name       = var.name
    #     signingkey = var.signingkey
    #   })
    #   filename = pathexpand("~/.gitconfig")
    # }
    /* aws_logout = {
      content  = file("${path.module}/files/aws_logout.scpt")
      filename = pathexpand("~/scripts/aws_logout.scpt")
    } */

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
    # manually installed running: /opt/homebrew/opt/fzf/install
    # fzf_zsh = {
    #   content  = file("${path.module}/files/.fzf.zsh")
    #   filename = pathexpand("~/.fzf.zsh")
    # }
    starship = {
      content  = file("${path.module}/files/starship.toml")
      filename = pathexpand("~/.config/starship.toml")
    }
    terraform_docs = {
      content  = file("${path.module}/files/terraform-docs.yml")
      filename = pathexpand("~/.tfdocs.d/.terraform-docs.yml")
    }
  }
}

resource "local_file" "files" {
  for_each = local.files

  content  = each.value.content
  filename = each.value.filename

  depends_on = [terraform_data.zsh]
}
