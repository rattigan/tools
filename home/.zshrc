################################################################################
# Online help (recommended in zsh formula)

unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/helpfiles

################################################################################
# Completions

# homeshick
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

# support for bash completion
autoload bashcompinit
bashcompinit

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
# Tokens
. ~/.tokens
