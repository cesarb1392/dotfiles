locals {
  brew_packages = [
    "ansible",
    "awscli",
    "aws-vault",
    "brave-browser",
    "exa",
    "docker-compose",
    "flycut",
    "fzf",
    "gh",
    "git",
    "gitleaks",
    "git-flow",
    "helm",
    "httpie",
    "httping",
    "k9s",
    "kubernetes-cli",
    "kubectx",
    "kubelogin",
    "lazygit",
    "libreoffice",
    "micro",
    "node",
    "nordvpn",
    "nvm",
    "openlens",
    "rar",
    "spectacle",
    "spotify",
    "starship",
    "sublime-text",
    "terraform",
    "terraform-docs",
    "tree",
    "vlc",
    "yarn",
    "ykman",
    "zoxide",
  ]

  cmd_print_version = jsonencode({ "\"version\"" = "\"$(brew list --versions $PACKAGE)\"" })
}

resource "shell_script" "brew_package" {
  for_each = toset(local.brew_packages)

  lifecycle_commands {
    create = format("brew install -q $PACKAGE; echo %s", local.cmd_print_version)
    read   = format("echo %s", local.cmd_print_version)
    update = format("brew install -q $PACKAGE; echo %s", local.cmd_print_version)
    delete = "brew uninstall -q $PACKAGE"
  }

  environment = {
    HOMEBREW_NO_INSTALL_UPGRADE            = 1
    HOMEBREW_NO_ENV_HINTS                  = 1
    HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK = 1
    PACKAGE                                = each.value
  }
}
