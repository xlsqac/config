if status is-interactive
    # Commands to run in interactive sessions can go here
end

export HOME="/home/xlsqac"
export nvim_path="/opt/nvim-linux64/bin"
export kitty_path="$HOME/.local/kitty.app/bin"
export go_path="/usr/local/go/bin"
export PYENV_ROOT="$HOME/.pyenv"
export NVM_DIR="$HOME/.nvm"
export PATH="$PATH:$nvim_path:$kitty_path:$go_path:$PYENV_ROOT/bin:$PYENV_ROOT/shims"

# function
function kitty-reload
    kill -SIGUSR1 $KITTY_PID
end

# alias
alias gits="git status"
alias gcm="git commit -v"

# 启动 ssh-agent
if not pgrep ssh-agent > /dev/null
    eval (ssh-agent -c)
end

# 添加 SSH 密钥
ssh-add ~/.ssh/id_rsa 2>/dev/null

