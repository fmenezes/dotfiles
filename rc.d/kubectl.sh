which kubectl > /dev/null
if [[ $? -eq 0 ]]; then
  source <(kubectl completion zsh)
fi
