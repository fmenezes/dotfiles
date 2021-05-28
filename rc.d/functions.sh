function man-pdf {
  man -t $1 | open -f -a /System/Applications/Preview.app
}

function darkmode {
  automator $DOTFILES/macos/darkmode.workflow 2>&1 1>/dev/null
}

function uuid {
  uuidgen | tr -d '\n' | tr '[:upper:]' '[:lower:]'
}

function compress-pdf {
  gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4  -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=- $1
}
