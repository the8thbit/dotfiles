###########################################################
# start.zsh: Include any modules that you want in your
# .zshrc script. Comment out any modules that you don't 
# want to include using the '#' character.
###########################################################
# NOTE: .zshrc is run whenever a new instance of zsh is
# created.
###########################################################

. "$HOME/.zshrc.d/defaults.zsh" # the defaults provided by the distro
. "$HOME/.zshrc.d/oh-my-zsh.zsh" # an oh-my-zsh configuration
#. "$HOME/.zshrc.d/attach-tmux.zsh" # attach to the tmux session '.' created in .profile
