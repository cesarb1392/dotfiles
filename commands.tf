locals {
  zsh_plugins = {
    syntax_highlighting = {
      command = <<EOF
        git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
      EOF
    }
    syntax_autosuggestions = {
      command = <<EOF
        git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
      EOF
    }
    syntax_completions = {
      command = <<EOF
        git clone git@github.com:zsh-users/zsh-completions.git ~/.oh-my-zsh/custom/plugins/zsh-completions
      EOF
    }
    git_open = {
      command = <<EOF
        git clone https://github.com/paulirish/git-open.git ~/.oh-my-zsh/custom/plugins/git-open
      EOF
    }
    zsh_history_substring_search = {
      command = <<EOF
        git clone git@github.com:zsh-users/zsh-history-substring-search.git ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search
      EOF
    }
  }

  tf_precommit_hook_dir = "=~/.git-tf-precommit-hook"
}

# move to shell_script
resource "terraform_data" "zsh" {
  provisioner "local-exec" {
    command = <<EOF
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
      EOF
  }
}

resource "terraform_data" "zsh_plugins" {
  for_each = local.zsh_plugins

  provisioner "local-exec" {
    command = each.value.command
  }

  depends_on = [terraform_data.zsh]
}


resource "terraform_data" "git_tf_precommit_hook" {
  # brew install pre-commit terraform-docs tflint tfsec checkov terrascan infracost tfupdate  jq
  #DIR=~/.git-tf-precommit-hook
  #git config --global init.templateDir ${DIR}
  #pre-commit init-templatedir -t pre-commit ${DIR}
  provisioner "local-exec" {
    command = <<EOF
        git config --global init.templateDir ${local.tf_precommit_hook_dir}
        pre-commit init-templatedir -t pre-commit ${local.tf_precommit_hook_dir}
      EOF
  }
}
