###########################################################
# defaults.sh: Include the default version of .bash_logout
# as provided by your distro, if one exists. If this file
# is blank, that just means that there was no default.
###########################################################
# NOTE: .bash_logout is run whenever you exit from a
# logged in bash shell.
###########################################################

# ~/.bash_logout: executed by bash(1) when login shell exits.

# when leaving the console clear the screen to increase privacy
if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi
