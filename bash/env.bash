#!/bin/bash

# Make vim the default editor
export EDITOR=gedit;
export TERMINAL="urxvt";

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=50000000;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
# Make some commands not show up in history
export HISTIGNORE=" *:ls:cd:cd -:pwd:exit:date:* --help:* -h:pony:pony add *:pony update *:pony save *:pony ls:pony ls *";

# Prefer US English and use UTF-8
export LANG="en_US.UTF-8";
export LC_ALL="en_US.UTF-8";

# Highlight section titles in manual pages
export LESS_TERMCAP_md="${yellow}";

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X";

export DBUS_SESSION_BUS_ADDRESS=unix:path=/var/run/user/$(id -u)/bus;

export TODOTXT_DEFAULT_ACTION=ls

# hidpi for gtk apps
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5
export QT_DEVICE_PIXEL_RATIO=2

# turn on go vendoring experiment
export GO15VENDOREXPERIMENT=1

export DOCKER_CONTENT_TRUST=1

# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
export PYTHONIOENCODING='UTF-8';
