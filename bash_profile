# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

#Load local $HOME/.profile.d *.sh files
# /etc/profile

# Local user environment and startup programs, for login setup
# Functions and aliases go in /etc/bashrc

# It's NOT a good idea to change this file unless you know what you
# are doing. It's much better to create a custom.sh shell script in
# $HOME/.profile.d/ to make custom changes to your environment, as this
# will prevent the need for merging in future updates.


#Load all the files in the local $HOME/.profile.d folder if the folder exist
if [ -d "$HOME/.profile.d" ]; then
	for i in $HOME/.profile.d/*.sh ; do
	    if [ -r "$i" ]; then
		if [ "${-#*i}" != "$-" ]; then
		    . "$i"
		else
		    . "$i" >/dev/null 2>&1
		fi
	    fi
	done
fi

#Unset i variable
unset i
#Unset pathmunge function
#unset -f pathmunge

# User specific environment and startup programs
export PATH=$PATH:$HOME/.local/bin:$HOME/bin


