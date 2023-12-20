# let fish_greeting "Let's go.."
# theme

# aliases
if type -q exa
    alias ll "exa -l -g --icons"
    alias lla "ll -a"
end
# for wsl only
# alias git git.exe
alias g git
alias lg lazygit
alias tx 'tmuxifier load-session'
alias pn pnpm
alias lzd lazydocker
switch (uname)
    case Linux
        command -qv nvim && alias vim nvim
        # display path var for WSL rendering in windows
        export DISPLAY=:0
        # java home WSL
        set --export java_home /opt/jdk-17.0.2
        set --export m2_home /opt/maven
        set --export MAVEN_HOME /opt/maven
        set --export RUST_HOME /home/rjanzen/.cargo/bin
        set --export NVM_HOME /home/rjanzen/.nvm
        set --export NODE_HOME /home/rjanzen/.nvm/versions/node/v19.9.0/bin
        set --export DENO_HOME /home/rjanzen/.deno/bin
        set --export ANDROID_HOME /mnt/c/Users/RJanzen/AppData/Local/Android/Sdk/platform-tools
        set -gx PATH $NODE_HOME $NVIM_HOME $RUST_HOME $DENO_HOME $NVM_HOME $M2_HOME $MAVEN_HOME $ANDROID_HOME $JAVA_HOME $PATH

        # pnpm
        set -gx PNPM_HOME "/home/rjanzen/.local/share/pnpm"
        if not string match -q -- $PNPM_HOME $PATH
            set -gx PATH "$PNPM_HOME" $PATH
        end
        # pnpm end
        # homebrew
        eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    case Darwin
        command -qv nvim && alias vim /opt/homebrew/opt/neovim/bin/nvim
end
zoxide init fish | source

set -gx EDITOR nvim

function fish_greeting
    test (uname) = Darwin; and neofetch
end

set -g theme_color_scheme zenburn

set -gx PATH "$HOME/.tmux/plugins/tmuxifier/bin" $PATH
eval (tmuxifier init - fish)
