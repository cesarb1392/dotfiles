locals {
  brew_formulas = [
    "ansible",
    "awscli",
    "aws-vault",
    "bluesnooze",
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
    "jq",
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
    "rectangle",
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
    "zsh",
    #gpg key
    "gpg2", "zgnupg", "pinentry-mac",
    # pre commit tf
    "pre-commit", "flint", "tfsec", "checkov", "terrascan", "infracost", "tfupdate"
  ]

  cmd_print_version = jsonencode({ "\"version\"" = "\"$(brew list --versions $PACKAGE)\"" })
}

resource "shell_script" "brew_package" {
  for_each = toset(local.brew_formulas)

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

#ansible
#aom
#apr
#apr-util
#argon2
#aspell
#autoconf
#aws-vault
#awscli
#bdw-gc
#brotli
#c-ares
#ca-certificates
#cffi
#checkov
#circleci
#cloudflared
#composer
#curl
#docker-compose
#docutils
#exa
#fontconfig
#freetds
#freetype
#fzf
#gd
#gdbm
#gettext
#gh
#giflib
#git
#git-flow
#gitleaks
#gmp
#gnupg
#gnupg@1.4
#gnutls
#go
#guile
#hcledit
#helm
#highway
#httpie
#httping
#icu4c
#imath
#infracost
#jpeg-turbo
#jpeg-xl
#jq
#k9s
#krb5
#kubectx
#kubelogin
#kubernetes-cli
#lazygit
#libassuan
#libavif
#libcbor
#libevent
#libfido2
#libgcrypt
#libgit2
#libgpg-error
#libidn2
#libksba
#libnghttp2
#libpng
#libpq
#libpython-tabulate
#libsodium
#libssh2
#libtasn1
#libtiff
#libtool
#libunistring
#libusb
#libuv
#libvmaf
#libyaml
#libzip
#little-cms2
#lz4
#m4
#micro
#mpdecimal
#mysql
#nettle
#node
#npth
#nvm
#oniguruma
#openexr
#openldap
#openssl@1.1
#openssl@3
#p11-kit
#pcre2
#php
#php@7.4
#pinentry
#pinentry-mac
#pipx
#pkg-config
#pre-commit
#protobuf
#pycparser
#pygments
#python-tabulate
#python-typing-extensions
#python@3.10
#python@3.11
#pyyaml
#readline
#rtmpdump
#six
#sqlite
#starship
#terraform
#terraform-docs
#terrascan
#tflint
#tfsec
#tfupdate
#tidy-html5
#tree
#unbound
#unixodbc
#virtualenv
#webp
#wget
#xz
#yarn
#ykman
#zlib
#zoxide
#zstd
#
#==> Casks
#1password-cli
#aws-vault
#bluesnooze
#mtmr
#nordvpn
#openlens
#rar
#rectangle
#session-manager-plugin
