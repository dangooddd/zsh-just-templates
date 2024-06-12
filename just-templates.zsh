# templates for justfiles

# latex
function just-latex() {
    src="${0:a:h}/latex/justfile"
    dst="$PWD"
    [[ -d "$@" ]] && dst="$@"
    [[ -d "$src" ]] && cp "$src" "$dst"
}
