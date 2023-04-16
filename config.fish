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
alias tx tmuxifier
command -qv nvim && alias vim /opt/homebrew/opt/neovim/bin/nvim
alias todo "cd ~/Dropbox/org/ && vim agenda.org"

set -gx EDITOR nvim

function fish_greeting
  neofetch
end

set -g theme_color_scheme zenburn

if status is-interactive
    # Commands to run in interactive sessions can go here
end
# starship init fish | source
set -gx PATH "$HOME/.tmux/plugins/tmuxifier/bin" $PATH
eval (tmuxifier init - fish)
alias tx tmuxifier
