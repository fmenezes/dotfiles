export PATH="/usr/local/sbin:$PATH"

export CODEPATH=~/Code
export GOPATH=$CODEPATH/go
export PATH=$GOPATH/bin:$PATH

unsetopt AUTO_CD # removes auto cd feature

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
