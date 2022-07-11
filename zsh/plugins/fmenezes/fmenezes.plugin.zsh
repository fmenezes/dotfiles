function darkmode {
  automator "${${(%):-%x}:h}/macos/darkmode.workflow" 2>&1 1>/dev/null
}

function uuid {
  uuidgen | tr -d '\n' | tr '[:upper:]' '[:lower:]'
}

function compress-pdf {
  gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4  -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=- $1
}
