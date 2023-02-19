resource "local_file" "zshenv" {
  content = file("${path.module}/files/.zshenv")

  filename = pathexpand("~/.zshenv")
}

resource "local_file" "zsh_aliases" {
  content = file("${path.module}/files/.zsh_aliases")

  filename = pathexpand("~/.zsh_aliases")
}

resource "local_file" "fzf_zsh" {
  content = file("${path.module}/files/.fzf.zsh")

  filename = pathexpand("~/.fzf.zsh")
}
resource "local_file" "starship" {
  content = file("${path.module}/files/starship.toml")

  filename = pathexpand("~/.config/starship.toml")
}

# oh my zsh + plugins