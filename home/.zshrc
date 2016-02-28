################################################################################
# zsh
# prevent unmatched globs from erroring
unsetopt nomatch
setopt no_rm_star_silent

################################################################################
# Path

# npm executables
export PATH=/usr/local/lib/node_modules/roots/node_modules/.bin:$PATH

# android executables
export PATH=$HOME/dev/android-sdk-macosx/platform-tools:$HOME/dev/android-sdk-macosx/tools:$PATH

# usr
export PATH=/usr/bin:/usr/texbin:$PATH
export MANPATH=/usr/bin/man:$MANPATH
export PATH=/usr/sbin:$PATH

# root
export PATH=/bin:$PATH
export PATH=/sbin:$PATH

# local
export PATH=/usr/local/bin:$PATH
export MANPATH=/usr/local/share/man:$MANPATH

# my executables
export PATH=$HOME/bin:$HOME/tools:$PATH

################################################################################
# Python
eval "$(pyenv init -)"

################################################################################
# Ruby
eval "$(rbenv init -)"

################################################################################
# Java
export JAVA_HOME=$(/usr/libexec/java_home)

alias java6='export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias java7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias java8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'

################################################################################
# Editor
export EDITOR='subl_w'

################################################################################
# SSH
ssh-add id_rsa >/dev/null 2>&1
ssh-add id_rsa ~/.ssh/*.pem >/dev/null 2>&1

################################################################################
# Tokens
. ~/.tokens

################################################################################
# Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# a black
# b red
# c green
# d brown
# e blue
# f magenta
# g cyan
# h light grey
# A bold black, usually shows up as dark grey
# B bold red
# C bold green
# D bold brown, usually shows up as yellow
# E bold blue
# F bold magenta
# G bold cyan
# H bold light grey; looks like bright white
# x default foreground or background

# 1. directory
# 2. symbolic link
# 3. socket
# 4. pipe
# 5. executable
# 6. block special
# 7. character special
# 8. executable with setuid bit set
# 9. executable with setgid bit set
# 10. directory writable to others, with sticky bit
# 11. directory writable to others, without sticky bit

export LSCOLORS=cxfxBxdxgxGxDxabagacad

# no	NORMAL, NORM	Global default, although everything should be something
# fi	FILE	Normal file
# di	DIR	Directory
# ln	SYMLINK, LINK, LNK	Symbolic link. If you set this to ‘target’ instead of a numerical value, the color is as for the file pointed to.
# pi	FIFO, PIPE	Named pipe
# do	DOOR	Door
# bd	BLOCK, BLK	Block device
# cd	CHAR, CHR	Character device
# or	ORPHAN	Symbolic link pointing to a non-existent file
# so	SOCK	Socket
# su	SETUID	File that is setuid (u+s)
# sg	SETGID	File that is setgid (g+s)
# tw	STICKY_OTHER_WRITABLE	Directory that is sticky and other-writable (+t,o+w)
# ow	OTHER_WRITABLE	Directory that is other-writable (o+w) and not sticky
# st	STICKY	Directory with the sticky bit set (+t) and not other-writable
# ex	EXEC	Executable file (i.e. has ‘x’ set in permissions)
# mi	MISSING	Non-existent file pointed to by a symbolic link (visible when you type ls -l)
# lc	LEFTCODE, LEFT	Opening terminal code
# rc	RIGHTCODE, RIGHT	Closing terminal code
# ec	ENDCODE, END	Non-filename text
# *.extension	 	Every file using this extension e.g. *.jpg

# 30	Black
# 31	Red
# 32	Green
# 33	Orange
# 34	Blue
# 35	Purple
# 36	Cyan
# 37	Grey
export LS_COLORS='di=32:ln=35:so=31:pi=33:ex=36:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}