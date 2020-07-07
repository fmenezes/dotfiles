function man-pdf {
  man -t $1 | open -f -a /System/Applications/Preview.app
}

function darkmode {
  automator ~/.dotfiles/macos/darkmode.workflow 2>&1 1>/dev/null
}

function uuid {
  python -c 'import sys,uuid; sys.stdout.write(str(uuid.uuid4()))'
}
