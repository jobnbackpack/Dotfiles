# let fish_greeting "Let's go.."
# theme

# aliases
if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end
alias g git
alias lg lazygit
# command -qv nvim && alias vim /opt/homebrew/opt/neovim/bin/nvim
command -qv nvim && alias vim nvim
zoxide init fish | source

alias todo "cd ~/Dropbox/org/ && vim agenda.org"

set -gx EDITOR nvim

function fish_greeting
  # neofetch
end

set -g theme_color_scheme zenburn

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# starship init fish | source
set -gx PATH "$HOME/.tmux/plugins/tmuxifier/bin" $PATH
eval (tmuxifier init - fish)
alias tx 'tmuxifier load-session'

# display path var for WSL rendering in windows
export DISPLAY=:0
# java home WSL
set --export JAVA_HOME /opt/jdk-17.0.2
set --export M2_HOME /opt/maven
set --export RUST_HOME /home/rjanzen/.cargo/bin
set --export NVM_HOME /home/rjanzen/.nvm
set --export NODE_HOME /home/rjanzen/.nvm/versions/node/v19.9.0/bin
set -gx PATH $NODE_HOME $NVIM_HOME $RUST_HOME $NVM_HOME $M2_HOME $JAVA_HOME $PATH
