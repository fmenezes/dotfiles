export CODEPATH=~/Code
export GOPATH=$CODEPATH/go
export PATH=$GOPATH/bin:$PATH

which rbenv > /dev/null
if [ $? -eq 0 ]; then 
  eval "$(rbenv init -)"
fi
