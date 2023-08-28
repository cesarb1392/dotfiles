Host *
    TCPKeepAlive yes
    ForwardAgent yes
    GSSAPIAuthentication yes
    ForwardX11 yes
    ForwardX11Trusted yes
    Protocol 2
    AddKeysToAgent yes
    ServerAliveInterval 500
    ServerAliveCountMax 5
    Compression yes

Host * !banana2
    LogLevel INFO

${ssh_hosts}