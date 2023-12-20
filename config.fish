# aliases
if type -q exa
    alias ll "exa -l -g --icons"
    alias lla "ll -a"
end
# for wsl only
alias g git
alias lg lazygit
alias tx tmuxifier
command -qv nvim && alias vim /opt/homebrew/opt/neovim/bin/nvim

set -gx EDITOR nvim

function fish_greeting
    neofetch
end

set -g theme_color_scheme zenburn

bind \cf tmux-sessionizer

set -gx PATH "$HOME/.tmux/plugins/tmuxifier/bin" $PATH
set -gx PATH "/Applications/WezTerm.app/Contents/MacOS" $PATH
set -gx PATH "$HOME/Developer/dotfiles" $PATH
eval (tmuxifier init - fish)
alias tx tmuxifier
