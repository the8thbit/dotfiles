#!/bin/bash
###########################################################
# start.sh: Include any modules that you want in your
# .profile script. Comment out any modules that you don't 
# want to include using the '#' character.
###########################################################
# NOTE: .profile is run once at login.
###########################################################

. "$HOME/.profile.d/defaults.sh"     # the defaults provided by the distro
#. "$HOME/.profile.d/create-tmux.sh" # create a tmux session called '.'
. "$HOME/.profile.d/dfiltr.env.sh"   # environmental variables for conecting to a locally hosted dfiltr test server
. "$HOME/.profile.d/packages.env.sh" # environmental variables for local package management
