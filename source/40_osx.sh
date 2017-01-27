# OSX-only stuff. Abort if not OSX.
[[ "$OSTYPE" =~ ^darwin ]] || return 1

# APPLE, Y U PUT /usr/bin B4 /usr/local/bin?!
PATH=/usr/local/bin:$(path_remove /usr/local/bin)
PATH=/usr/local/sbin:$(path_remove /usr/local/sbin)
PATH=~/.dotfiles/bin/osx:$(path_remove ~/.dotfiles/bin/osx)
export PATH

export JAVA_HOME="$(/usr/libexec/java_home)"


eval $(gdircolors ~/.dircolors)

source "`brew --prefix`/etc/grc.bashrc"

